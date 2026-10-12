import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/profile_bloc.dart';
import '../bloc/profile_event.dart';
import '../bloc/profile_state.dart';
import '../models/profile_model.dart';
import '../theme/app_theme.dart';
import '../widgets/profile_sections.dart';

/// Breakpoints used to switch between mobile and desktop layouts.
class Breakpoints {
  Breakpoints._();

  static const desktop = 840.0;
  static const mobileMaxWidth = 640.0;
  static const desktopMaxWidth = 1160.0;
}

const _titles = ['Profil Dan Bio', 'Pengalaman & Keahlian'];

/// Responsive shell with BLoC state management:
/// Fetches profile data via Dio, handles loading, error, and loaded states.
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _tab = 0;

  @override
  void initState() {
    super.initState();
    // Dispatch fetch event on startup
    context.read<ProfileBloc>().add(const ProfileEvent.fetchProfile());
  }

  void _select(int i) => setState(() => _tab = i);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return state.when(
          initial: () => const _LoadingView(),
          loading: () => const _LoadingView(),
          error: (message) => _ErrorView(message: message),
          loaded: (profile) {
            return LayoutBuilder(
              builder: (context, constraints) {
                final isDesktop = constraints.maxWidth >= Breakpoints.desktop;
                return isDesktop
                    ? _DesktopLayout(
                        profile: profile,
                        tab: _tab,
                        onSelect: _select,
                      )
                    : _MobileLayout(
                        profile: profile,
                        tab: _tab,
                        onSelect: _select,
                      );
              },
            );
          },
        );
      },
    );
  }
}

// ---------------------------------------------------------------------------
// Loading & Error States
// ---------------------------------------------------------------------------
class _LoadingView extends StatelessWidget {
  const _LoadingView();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.surface,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 36,
              height: 36,
              child: CircularProgressIndicator(
                strokeWidth: 3,
                color: AppColors.primary,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Memuat data profil...',
              style: TextStyle(
                fontFamily: 'Plus Jakarta Sans',
                fontSize: 14,
                color: AppColors.secondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 420),
            child: Card(
              color: AppColors.surfaceContainerLowest,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: const BorderSide(color: Color(0xFFFFDAD6)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.error_outline_rounded,
                      size: 48,
                      color: Color(0xFFBA1A1A),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Gagal Memuat Profil',
                      style: AppText.titleMd.copyWith(color: AppColors.onSurface),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      message,
                      textAlign: TextAlign.center,
                      style: AppText.bodySm.copyWith(color: AppColors.secondary),
                    ),
                    const SizedBox(height: 20),
                    FilledButton.icon(
                      onPressed: () {
                        context
                            .read<ProfileBloc>()
                            .add(const ProfileEvent.refreshProfile());
                      },
                      style: FilledButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        foregroundColor: AppColors.onPrimary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      icon: const Icon(Icons.refresh, size: 18),
                      label: const Text('Coba Lagi'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Mobile layout (HP / layar kecil)
// ---------------------------------------------------------------------------
class _MobileLayout extends StatelessWidget {
  const _MobileLayout({
    required this.profile,
    required this.tab,
    required this.onSelect,
  });

  final ProfileData profile;
  final int tab;
  final ValueChanged<int> onSelect;

  List<Widget> get _sections => tab == 0
      ? [
          CandidateHeaderCard(
            candidate: profile.candidate,
            stats: profile.stats,
          ),
          AboutSection(aboutMe: profile.candidate.aboutMe),
          SkillsSection(
            skills: profile.skills,
            supportingCompetencies: profile.supportingCompetencies,
          ),
          ExperienceSection(experiences: profile.experiences),
          CertificationSection(certification: profile.certification),
          ActionButtons(candidate: profile.candidate),
        ]
      : [
          SkillsSection(
            skills: profile.skills,
            supportingCompetencies: profile.supportingCompetencies,
          ),
          ExperienceSection(experiences: profile.experiences),
          CertificationSection(certification: profile.certification),
        ];

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.paddingOf(context);
    final sections = _sections;
    return Scaffold(
      backgroundColor: AppColors.surface,
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(64),
        child: _FrostedBar(
          shadowOffset: const Offset(0, 1),
          child: SafeArea(
            bottom: false,
            child: _MaxWidth(
              maxWidth: Breakpoints.mobileMaxWidth,
              child: SizedBox(
                height: 64,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: AppSpace.gutterMobile),
                  child: Row(
                    children: [
                      Expanded(child: Text(_titles[tab], style: AppText.titleMd)),
                      const _AvatarBadge(),
                      const SizedBox(width: 6),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 250),
        child: ListView.separated(
          key: ValueKey(tab),
          padding: EdgeInsets.fromLTRB(
            AppSpace.gutterMobile,
            padding.top + 64 + AppSpace.sm,
            AppSpace.gutterMobile,
            padding.bottom + 64 + AppSpace.lg,
          ),
          itemCount: sections.length,
          separatorBuilder: (_, _) => const SizedBox(height: AppSpace.md),
          itemBuilder: (_, i) => _MaxWidth(
            maxWidth: Breakpoints.mobileMaxWidth - AppSpace.gutterMobile * 2,
            child: sections[i],
          ),
        ),
      ),
      bottomNavigationBar: _FrostedBar(
        shadowOffset: const Offset(0, -1),
        child: SafeArea(
          top: false,
          child: _MaxWidth(
            maxWidth: Breakpoints.mobileMaxWidth,
            child: SizedBox(
              height: 64,
              child: Row(
                children: [
                  _BottomNavItem(
                    icon: Icons.account_circle_outlined,
                    activeIcon: Icons.account_circle,
                    label: 'Profil & Bio',
                    active: tab == 0,
                    onTap: () => onSelect(0),
                  ),
                  _BottomNavItem(
                    icon: Icons.work_history_outlined,
                    activeIcon: Icons.work_history,
                    label: 'Pengalaman & Keahlian',
                    active: tab == 1,
                    onTap: () => onSelect(1),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Desktop layout (web di laptop / monitor)
// ---------------------------------------------------------------------------
class _DesktopLayout extends StatelessWidget {
  const _DesktopLayout({
    required this.profile,
    required this.tab,
    required this.onSelect,
  });

  final ProfileData profile;
  final int tab;
  final ValueChanged<int> onSelect;

  static const _gap = AppSpace.lg;

  (List<Widget>, List<Widget>) get _columns => tab == 0
      ? (
          [
            CandidateHeaderCard(
              candidate: profile.candidate,
              stats: profile.stats,
            ),
            AboutSection(aboutMe: profile.candidate.aboutMe),
            ActionButtons(candidate: profile.candidate),
          ],
          [
            SkillsSection(
              skills: profile.skills,
              supportingCompetencies: profile.supportingCompetencies,
            ),
            ExperienceSection(experiences: profile.experiences),
            CertificationSection(certification: profile.certification),
          ],
        )
      : (
          [
            SkillsSection(
              skills: profile.skills,
              supportingCompetencies: profile.supportingCompetencies,
            ),
            CertificationSection(certification: profile.certification),
          ],
          [
            ExperienceSection(experiences: profile.experiences),
          ],
        );

  Widget _column(List<Widget> children) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          for (var i = 0; i < children.length; i++) ...[
            if (i > 0) const SizedBox(height: _gap),
            children[i],
          ],
        ],
      );

  @override
  Widget build(BuildContext context) {
    final (left, right) = _columns;
    return Scaffold(
      backgroundColor: AppColors.surface,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(72),
        child: _FrostedBar(
          shadowOffset: const Offset(0, 1),
          child: _MaxWidth(
            maxWidth: Breakpoints.desktopMaxWidth,
            child: SizedBox(
              height: 72,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Row(
                  children: [
                    const _AvatarBadge(),
                    const SizedBox(width: 12),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(profile.candidate.name, style: AppText.titleMd),
                        Text(
                          _titles[tab],
                          style: AppText.bodySm.copyWith(color: AppColors.secondary),
                        ),
                      ],
                    ),
                    const Spacer(),
                    _TopNavItem(
                      icon: Icons.account_circle_outlined,
                      label: 'Profil & Bio',
                      active: tab == 0,
                      onTap: () => onSelect(0),
                    ),
                    const SizedBox(width: 8),
                    _TopNavItem(
                      icon: Icons.work_history_outlined,
                      label: 'Pengalaman & Keahlian',
                      active: tab == 1,
                      onTap: () => onSelect(1),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 250),
        child: SingleChildScrollView(
          key: ValueKey(tab),
          padding: const EdgeInsets.fromLTRB(32, 72 + 32, 32, 48),
          child: _MaxWidth(
            maxWidth: Breakpoints.desktopMaxWidth - 64,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 4, child: _column(left)),
                const SizedBox(width: _gap),
                Expanded(flex: 6, child: _column(right)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Shared pieces
// ---------------------------------------------------------------------------

/// Centers [child] and caps its width.
class _MaxWidth extends StatelessWidget {
  const _MaxWidth({required this.maxWidth, required this.child});

  final double maxWidth;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 1,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: child,
      ),
    );
  }
}

class _AvatarBadge extends StatelessWidget {
  const _AvatarBadge();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
      decoration: const BoxDecoration(
        color: AppColors.primary,
        shape: BoxShape.circle,
        boxShadow: shadowSm,
      ),
      child: const Icon(Icons.person, size: 18, color: AppColors.onPrimary),
    );
  }
}

/// `bg-surface/85 backdrop-blur-xl` equivalent.
class _FrostedBar extends StatelessWidget {
  const _FrostedBar({required this.child, required this.shadowOffset});

  final Widget child;
  final Offset shadowOffset;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0x0A000000),
            blurRadius: 10,
            offset: shadowOffset,
          ),
        ],
      ),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 24, sigmaY: 24),
          child: ColoredBox(
            color: AppColors.surface.withValues(alpha: 0.85),
            child: child,
          ),
        ),
      ),
    );
  }
}

class _BottomNavItem extends StatelessWidget {
  const _BottomNavItem({
    required this.icon,
    required this.activeIcon,
    required this.label,
    required this.active,
    required this.onTap,
  });

  final IconData icon;
  final IconData activeIcon;
  final String label;
  final bool active;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final color = active ? AppColors.primary : AppColors.onSurfaceVariant;
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(active ? activeIcon : icon, size: 22, color: color),
            const SizedBox(height: 4),
            Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppText.labelSm.copyWith(
                color: color,
                fontWeight: active ? FontWeight.w700 : FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Pill-style navigation tab for the desktop header.
class _TopNavItem extends StatelessWidget {
  const _TopNavItem({
    required this.icon,
    required this.label,
    required this.active,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final bool active;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final fg = active ? AppColors.onPrimary : AppColors.onSurfaceVariant;
    return Material(
      color: active ? AppColors.primary : Colors.transparent,
      borderRadius: BorderRadius.circular(999),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(999),
        hoverColor: AppColors.surfaceContainer,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 18, color: fg),
              const SizedBox(width: 8),
              Text(
                label,
                style: AppText.labelMd.copyWith(color: fg, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
