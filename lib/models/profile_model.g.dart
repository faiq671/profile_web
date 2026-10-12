// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CandidateInfo _$CandidateInfoFromJson(Map<String, dynamic> json) =>
    _CandidateInfo(
      name: json['name'] as String,
      role: json['role'] as String,
      location: json['location'] as String,
      statusBadge: json['statusBadge'] as String,
      avatarUrl: json['avatarUrl'] as String,
      aboutMe: json['aboutMe'] as String,
      whatsappNumber: json['whatsappNumber'] as String,
      whatsappDefaultMessage: json['whatsappDefaultMessage'] as String,
      cvPdfUrl: json['cvPdfUrl'] as String? ?? '',
    );

Map<String, dynamic> _$CandidateInfoToJson(_CandidateInfo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'role': instance.role,
      'location': instance.location,
      'statusBadge': instance.statusBadge,
      'avatarUrl': instance.avatarUrl,
      'aboutMe': instance.aboutMe,
      'whatsappNumber': instance.whatsappNumber,
      'whatsappDefaultMessage': instance.whatsappDefaultMessage,
      'cvPdfUrl': instance.cvPdfUrl,
    };

_CandidateStats _$CandidateStatsFromJson(Map<String, dynamic> json) =>
    _CandidateStats(
      pengalaman: json['pengalaman'] as String,
      kesiapan: json['kesiapan'] as String,
      statusKerja: json['statusKerja'] as String,
    );

Map<String, dynamic> _$CandidateStatsToJson(_CandidateStats instance) =>
    <String, dynamic>{
      'pengalaman': instance.pengalaman,
      'kesiapan': instance.kesiapan,
      'statusKerja': instance.statusKerja,
    };

_SkillItem _$SkillItemFromJson(Map<String, dynamic> json) => _SkillItem(
  iconName: json['iconName'] as String,
  title: json['title'] as String,
  subtitle: json['subtitle'] as String,
  level: json['level'] as String,
  isExpert: json['isExpert'] as bool,
);

Map<String, dynamic> _$SkillItemToJson(_SkillItem instance) =>
    <String, dynamic>{
      'iconName': instance.iconName,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'level': instance.level,
      'isExpert': instance.isExpert,
    };

_ExperienceItem _$ExperienceItemFromJson(Map<String, dynamic> json) =>
    _ExperienceItem(
      period: json['period'] as String,
      role: json['role'] as String,
      company: json['company'] as String,
      description: json['description'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      isCurrent: json['isCurrent'] as bool,
      dotColorHex: json['dotColorHex'] as String,
    );

Map<String, dynamic> _$ExperienceItemToJson(_ExperienceItem instance) =>
    <String, dynamic>{
      'period': instance.period,
      'role': instance.role,
      'company': instance.company,
      'description': instance.description,
      'tags': instance.tags,
      'isCurrent': instance.isCurrent,
      'dotColorHex': instance.dotColorHex,
    };

_CertificationInfo _$CertificationInfoFromJson(Map<String, dynamic> json) =>
    _CertificationInfo(
      title: json['title'] as String,
      issuer: json['issuer'] as String,
      regNumber: json['regNumber'] as String,
      badgeText: json['badgeText'] as String,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$CertificationInfoToJson(_CertificationInfo instance) =>
    <String, dynamic>{
      'title': instance.title,
      'issuer': instance.issuer,
      'regNumber': instance.regNumber,
      'badgeText': instance.badgeText,
      'imageUrl': instance.imageUrl,
    };

_ProfileData _$ProfileDataFromJson(Map<String, dynamic> json) => _ProfileData(
  candidate: CandidateInfo.fromJson(json['candidate'] as Map<String, dynamic>),
  stats: CandidateStats.fromJson(json['stats'] as Map<String, dynamic>),
  skills: (json['skills'] as List<dynamic>)
      .map((e) => SkillItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  supportingCompetencies: (json['supportingCompetencies'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  experiences: (json['experiences'] as List<dynamic>)
      .map((e) => ExperienceItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  certification: CertificationInfo.fromJson(
    json['certification'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$ProfileDataToJson(_ProfileData instance) =>
    <String, dynamic>{
      'candidate': instance.candidate,
      'stats': instance.stats,
      'skills': instance.skills,
      'supportingCompetencies': instance.supportingCompetencies,
      'experiences': instance.experiences,
      'certification': instance.certification,
    };
