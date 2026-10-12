import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/profile_model.dart';
import '../theme/app_theme.dart';
import 'common.dart';

IconData _iconFromName(String name) {
  switch (name) {
    case 'verified':
      return Icons.verified_outlined;
    case 'precision_manufacturing':
      return Icons.precision_manufacturing_outlined;
    case 'fact_check':
      return Icons.fact_check_outlined;
    case 'build':
      return Icons.build_outlined;
    case 'engineering':
      return Icons.engineering_outlined;
    case 'inventory':
      return Icons.inventory_2_outlined;
    default:
      return Icons.check_circle_outline;
  }
}

Color _colorFromHex(String hex, {Color fallback = AppColors.primary}) {
  try {
    final clean = hex.replaceAll('#', '');
    if (clean.length == 6) {
      return Color(int.parse('0xFF$clean'));
    } else if (clean.length == 8) {
      return Color(int.parse('0x$clean'));
    }
  } catch (_) {}
  return fallback;
}

// ---------------------------------------------------------------------------
// 1. Candidate Header Card
// ---------------------------------------------------------------------------
class CandidateHeaderCard extends StatelessWidget {
  const CandidateHeaderCard({
    super.key,
    required this.candidate,
    required this.stats,
  });

  final CandidateInfo candidate;
  final CandidateStats stats;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      child: Column(
        children: [
          // Avatar + status badge
          Padding(
            padding: const EdgeInsets.only(bottom: AppSpace.sm),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 96,
                  height: 96,
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: AppColors.surfaceContainer,
                    shape: BoxShape.circle,
                    boxShadow: shadowSm,
                  ),
                  child: ClipOval(
                    child: SafeNetworkImage(
                      url: candidate.avatarUrl,
                      fallbackIcon: Icons.person,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: -14,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      color: AppColors.surfaceContainerLowest,
                      borderRadius: BorderRadius.circular(999),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x1A000000),
                          blurRadius: 3,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const PulseDot(),
                        const SizedBox(width: 4),
                        Text(
                          candidate.statusBadge,
                          style: AppText.bodySm.copyWith(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(candidate.name, style: AppText.headlineSm, textAlign: TextAlign.center),
          const SizedBox(height: 2),
          Text(
            candidate.role,
            style: AppText.bodyMd.copyWith(color: AppColors.secondary),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Pill(
            label: candidate.location,
            background: AppColors.surfaceContainerLow,
            foreground: AppColors.onSurfaceVariant,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            leading: const Icon(
              Icons.location_on_outlined,
              size: 16,
              color: AppColors.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: AppSpace.md + AppSpace.xs),
          Row(
            children: [
              Expanded(
                child: _StatTile(value: stats.pengalaman, label: 'Pengalaman'),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _StatTile(value: stats.kesiapan, label: 'Kesiapan'),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _StatTile(
                  value: stats.statusKerja,
                  label: 'Status Kerja',
                  valueColor: AppColors.green,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatTile extends StatelessWidget {
  const _StatTile({required this.value, required this.label, this.valueColor});

  final String value;
  final String label;
  final Color? valueColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerLow,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Text(
            value,
            style: AppText.titleSm.copyWith(color: valueColor ?? AppColors.onSurface),
            textAlign: TextAlign.center,
          ),
          Text(
            label,
            style: AppText.labelSm.copyWith(color: AppColors.secondary),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// 2. Tentang Saya
// ---------------------------------------------------------------------------
class AboutSection extends StatelessWidget {
  const AboutSection({super.key, required this.aboutMe});

  final String aboutMe;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeader(icon: Icons.badge_outlined, title: 'Tentang Saya'),
          const SizedBox(height: AppSpace.sm),
          Text(
            aboutMe,
            style: AppText.bodyMd.copyWith(color: AppColors.secondary, height: 1.625),
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// 3. Keahlian & Kompetensi
// ---------------------------------------------------------------------------
class SkillsSection extends StatelessWidget {
  const SkillsSection({
    super.key,
    required this.skills,
    required this.supportingCompetencies,
  });

  final List<SkillItem> skills;
  final List<String> supportingCompetencies;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeader(
            icon: Icons.build_circle_outlined,
            title: 'Keahlian & Kompetensi',
            trailing: Text(
              'Standar Industri',
              style: AppText.labelSm.copyWith(color: AppColors.secondary),
            ),
          ),
          const SizedBox(height: AppSpace.md),
          for (var i = 0; i < skills.length; i++) ...[
            if (i > 0) const SizedBox(height: 10),
            _SkillTile(
              icon: _iconFromName(skills[i].iconName),
              title: skills[i].title,
              subtitle: skills[i].subtitle,
              level: skills[i].level,
              expert: skills[i].isExpert,
            ),
          ],
          if (supportingCompetencies.isNotEmpty) ...[
            const SizedBox(height: AppSpace.md + 4),
            Text(
              'Kompetensi Pendukung',
              style: AppText.labelSm.copyWith(color: AppColors.secondary),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (final s in supportingCompetencies)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppColors.surfaceContainerLow,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(s, style: AppText.labelSm),
                  ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}

class _SkillTile extends StatelessWidget {
  const _SkillTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.level,
    required this.expert,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final String level;
  final bool expert;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerLow,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon, size: 20, color: AppColors.primary),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: AppText.titleSm),
                Text(subtitle, style: AppText.bodySm.copyWith(color: AppColors.secondary)),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Pill(
            label: level,
            background: expert ? AppColors.greenBg : AppColors.surfaceContainer,
            foreground: expert ? AppColors.greenText : AppColors.onSurfaceVariant,
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// 4. Pengalaman Kerja (timeline)
// ---------------------------------------------------------------------------
class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key, required this.experiences});

  final List<ExperienceItem> experiences;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeader(
            icon: Icons.history_edu_outlined,
            title: 'Pengalaman Kerja',
          ),
          const SizedBox(height: AppSpace.md),
          Stack(
            children: [
              Positioned(
                left: 5,
                top: 8,
                bottom: 8,
                child: Container(width: 2, color: AppColors.surfaceContainer),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (var i = 0; i < experiences.length; i++) ...[
                      if (i > 0) const SizedBox(height: 24),
                      _TimelineItem(item: experiences[i]),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _TimelineItem extends StatelessWidget {
  const _TimelineItem({required this.item});

  final ExperienceItem item;

  @override
  Widget build(BuildContext context) {
    final dotColor = _colorFromHex(
      item.dotColorHex,
      fallback: item.isCurrent ? AppColors.primary : AppColors.secondary,
    );

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          left: -20,
          top: 4,
          child: Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              color: dotColor,
              shape: BoxShape.circle,
              boxShadow: shadowSm,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  item.period,
                  style: AppText.labelSm.copyWith(
                    color: item.isCurrent ? AppColors.primary : AppColors.secondary,
                  ),
                ),
                if (item.isCurrent) ...[
                  const SizedBox(width: 8),
                  const Pill(
                    label: 'Terkini',
                    background: AppColors.primary,
                    foreground: AppColors.onPrimary,
                    fontSize: 10,
                    radius: 4,
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  ),
                ],
              ],
            ),
            const SizedBox(height: 4),
            Text(item.role, style: AppText.titleSm),
            const SizedBox(height: 4),
            Text(item.company, style: AppText.labelMd.copyWith(color: AppColors.secondary)),
            const SizedBox(height: 8),
            Text(
              item.description,
              style: AppText.bodySm.copyWith(color: AppColors.secondary, height: 1.625),
            ),
            if (item.tags.isNotEmpty) ...[
              const SizedBox(height: 8),
              Wrap(
                spacing: 6,
                runSpacing: 6,
                children: [
                  for (final t in item.tags)
                    Pill(label: t, radius: 4, fontWeight: FontWeight.w400),
                ],
              ),
            ],
          ],
        ),
      ],
    );
  }
}

// ---------------------------------------------------------------------------
// 5. Sertifikasi Resmi
// ---------------------------------------------------------------------------
class CertificationSection extends StatelessWidget {
  const CertificationSection({super.key, required this.certification});

  final CertificationInfo certification;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeader(
            icon: Icons.verified_outlined,
            title: 'Sertifikasi Resmi',
            trailing: Pill(
              label: certification.badgeText,
              background: AppColors.greenBg,
              foreground: AppColors.greenText,
              fontSize: 10,
              leading: Container(
                width: 6,
                height: 6,
                decoration: const BoxDecoration(
                  color: AppColors.green,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
          const SizedBox(height: AppSpace.sm + 4),
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: AppColors.surfaceContainerLow,
              borderRadius: BorderRadius.circular(8),
              boxShadow: shadowSm,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: SizedBox(
                height: 176,
                width: double.infinity,
                child: SafeNetworkImage(
                  url: certification.imageUrl,
                  fallbackIcon: Icons.workspace_premium_outlined,
                ),
              ),
            ),
          ),
          const SizedBox(height: AppSpace.sm + 4),
          Text(certification.title, style: AppText.titleSm),
          const SizedBox(height: 4),
          Text(
            certification.issuer,
            style: AppText.bodySm.copyWith(color: AppColors.secondary),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: Text(
                  certification.regNumber,
                  style: AppText.labelSm.copyWith(
                    fontFamily: 'monospace',
                    color: AppColors.onSurfaceVariant,
                  ),
                ),
              ),
              const Icon(Icons.verified_user_outlined, size: 18, color: AppColors.secondary),
            ],
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// 6. Primary Action Buttons
// ---------------------------------------------------------------------------
class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key, required this.candidate});

  final CandidateInfo candidate;

  Future<void> _openWhatsApp() async {
    final cleanPhone =
        candidate.whatsappNumber.replaceAll(RegExp(r'[^0-9+]'), '');
    final encodedMsg = Uri.encodeComponent(candidate.whatsappDefaultMessage);
    final rawUrl = 'https://wa.me/$cleanPhone?text=$encodedMsg';
    final uri = Uri.tryParse(rawUrl);
    if (uri != null && (uri.isScheme('https') || uri.isScheme('http'))) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppSpace.xs, bottom: AppSpace.sm),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 44,
            child: FilledButton.icon(
              onPressed: _openWhatsApp,
              style: FilledButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: AppColors.onPrimary,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                textStyle: AppText.labelMd,
              ),
              icon: const Icon(Icons.chat_outlined, size: 19),
              label: const Text('Hubungi Saya via WhatsApp'),
            ),
          ),
          const SizedBox(height: 10),
          DownloadCvButton(cvUrl: candidate.cvPdfUrl),
        ],
      ),
    );
  }
}

enum _DownloadState { idle, loading, done }

class DownloadCvButton extends StatefulWidget {
  const DownloadCvButton({super.key, required this.cvUrl});

  final String cvUrl;

  @override
  State<DownloadCvButton> createState() => _DownloadCvButtonState();
}

class _DownloadCvButtonState extends State<DownloadCvButton> {
  _DownloadState _state = _DownloadState.idle;

  Future<void> _onPressed() async {
    if (_state != _DownloadState.idle) return;
    setState(() => _state = _DownloadState.loading);

    // If valid safe URL (http/https), open or download
    try {
      if (widget.cvUrl.isNotEmpty) {
        final uri = Uri.tryParse(widget.cvUrl);
        if (uri != null && (uri.isScheme('https') || uri.isScheme('http'))) {
          await launchUrl(uri, mode: LaunchMode.externalApplication);
        }
      }
    } catch (_) {}

    await Future.delayed(const Duration(milliseconds: 1000));
    if (!mounted) return;
    setState(() => _state = _DownloadState.done);
    await Future.delayed(const Duration(milliseconds: 2400));
    if (!mounted) return;
    setState(() => _state = _DownloadState.idle);
  }

  @override
  Widget build(BuildContext context) {
    final (Widget icon, String label) = switch (_state) {
      _DownloadState.idle => (
          const Icon(Icons.download, size: 19),
          'Unduh CV Lengkap (PDF)',
        ),
      _DownloadState.loading => (
          const SizedBox(
            width: 17,
            height: 17,
            child: CircularProgressIndicator(strokeWidth: 2, color: AppColors.onSurface),
          ),
          'Mengunduh Dokumen...',
        ),
      _DownloadState.done => (
          const Icon(Icons.check_circle, size: 19, color: AppColors.green),
          'CV Berhasil Diunduh!',
        ),
    };

    return Container(
      height: 44,
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(8),
        boxShadow: shadowSm,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          key: const ValueKey('downloadCvBtn'),
          borderRadius: BorderRadius.circular(8),
          onTap: _onPressed,
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            child: Row(
              key: ValueKey(_state),
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon,
                const SizedBox(width: 8),
                Text(label, style: AppText.labelMd),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
