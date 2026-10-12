import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
abstract class CandidateInfo with _$CandidateInfo {
  const factory CandidateInfo({
    required String name,
    required String role,
    required String location,
    required String statusBadge,
    required String avatarUrl,
    required String aboutMe,
    required String whatsappNumber,
    required String whatsappDefaultMessage,
    @Default('') String cvPdfUrl,
  }) = _CandidateInfo;

  factory CandidateInfo.fromJson(Map<String, dynamic> json) =>
      _$CandidateInfoFromJson(json);
}

@freezed
abstract class CandidateStats with _$CandidateStats {
  const factory CandidateStats({
    required String pengalaman,
    required String kesiapan,
    required String statusKerja,
  }) = _CandidateStats;

  factory CandidateStats.fromJson(Map<String, dynamic> json) =>
      _$CandidateStatsFromJson(json);
}

@freezed
abstract class SkillItem with _$SkillItem {
  const factory SkillItem({
    required String iconName,
    required String title,
    required String subtitle,
    required String level,
    required bool isExpert,
  }) = _SkillItem;

  factory SkillItem.fromJson(Map<String, dynamic> json) =>
      _$SkillItemFromJson(json);
}

@freezed
abstract class ExperienceItem with _$ExperienceItem {
  const factory ExperienceItem({
    required String period,
    required String role,
    required String company,
    required String description,
    required List<String> tags,
    required bool isCurrent,
    required String dotColorHex,
  }) = _ExperienceItem;

  factory ExperienceItem.fromJson(Map<String, dynamic> json) =>
      _$ExperienceItemFromJson(json);
}

@freezed
abstract class CertificationInfo with _$CertificationInfo {
  const factory CertificationInfo({
    required String title,
    required String issuer,
    required String regNumber,
    required String badgeText,
    required String imageUrl,
  }) = _CertificationInfo;

  factory CertificationInfo.fromJson(Map<String, dynamic> json) =>
      _$CertificationInfoFromJson(json);
}

@freezed
abstract class ProfileData with _$ProfileData {
  const factory ProfileData({
    required CandidateInfo candidate,
    required CandidateStats stats,
    required List<SkillItem> skills,
    required List<String> supportingCompetencies,
    required List<ExperienceItem> experiences,
    required CertificationInfo certification,
  }) = _ProfileData;

  factory ProfileData.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataFromJson(json);
}
