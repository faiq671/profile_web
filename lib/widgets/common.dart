import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

/// White rounded card used by every section (`bg-surface-container-lowest rounded-xl p-space-lg shadow-sm`).
class SectionCard extends StatelessWidget {
  const SectionCard({
    super.key,
    required this.child,
    this.crossAxisAlignment = CrossAxisAlignment.stretch,
  });

  final Widget child;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpace.lg),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(12),
        boxShadow: shadowSm,
      ),
      child: child,
    );
  }
}

/// Section title row with an icon, plus an optional trailing widget.
class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.icon,
    required this.title,
    this.trailing,
  });

  final IconData icon;
  final String title;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 20, color: AppColors.primary),
        const SizedBox(width: 8),
        Expanded(child: Text(title, style: AppText.titleMd)),
        ?trailing,
      ],
    );
  }
}

/// Small rounded pill / badge.
class Pill extends StatelessWidget {
  const Pill({
    super.key,
    required this.label,
    this.background = AppColors.surfaceContainerLow,
    this.foreground = AppColors.onSurfaceVariant,
    this.fontSize = 11,
    this.radius = 999,
    this.padding = const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
    this.fontWeight = FontWeight.w600,
    this.leading,
  });

  final String label;
  final Color background;
  final Color foreground;
  final double fontSize;
  final double radius;
  final EdgeInsets padding;
  final FontWeight fontWeight;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (leading != null) ...[leading!, const SizedBox(width: 4)],
          Text(
            label,
            style: AppText.bodySm.copyWith(
              fontSize: fontSize,
              height: 1.4,
              letterSpacing: 0,
              fontWeight: fontWeight,
              color: foreground,
            ),
          ),
        ],
      ),
    );
  }
}

/// Animated pulsing green dot (`animate-pulse`).
class PulseDot extends StatefulWidget {
  const PulseDot({super.key, this.size = 8, this.color = AppColors.green});

  final double size;
  final Color color;

  @override
  State<PulseDot> createState() => _PulseDotState();
}

class _PulseDotState extends State<PulseDot> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1000),
  )..repeat(reverse: true);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: Tween(begin: 1.0, end: 0.4).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
      ),
      child: Container(
        width: widget.size,
        height: widget.size,
        decoration: BoxDecoration(color: widget.color, shape: BoxShape.circle),
      ),
    );
  }
}

/// Network image with a graceful fallback (e.g. when CORS blocks it on web).
class SafeNetworkImage extends StatelessWidget {
  const SafeNetworkImage({
    super.key,
    required this.url,
    required this.fallbackIcon,
    this.fit = BoxFit.cover,
  });

  final String url;
  final IconData fallbackIcon;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      fit: fit,
      webHtmlElementStrategy: WebHtmlElementStrategy.fallback,
      loadingBuilder: (context, child, progress) {
        if (progress == null) return child;
        return Container(
          color: AppColors.surfaceContainer,
          alignment: Alignment.center,
          child: const SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(strokeWidth: 2),
          ),
        );
      },
      errorBuilder: (context, error, stack) => Container(
        color: AppColors.surfaceContainer,
        alignment: Alignment.center,
        child: Icon(fallbackIcon, color: AppColors.secondary, size: 36),
      ),
    );
  }
}
