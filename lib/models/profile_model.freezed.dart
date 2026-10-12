// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CandidateInfo {

 String get name; String get role; String get location; String get statusBadge; String get avatarUrl; String get aboutMe; String get whatsappNumber; String get whatsappDefaultMessage; String get cvPdfUrl;
/// Create a copy of CandidateInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CandidateInfoCopyWith<CandidateInfo> get copyWith => _$CandidateInfoCopyWithImpl<CandidateInfo>(this as CandidateInfo, _$identity);

  /// Serializes this CandidateInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CandidateInfo&&(identical(other.name, name) || other.name == name)&&(identical(other.role, role) || other.role == role)&&(identical(other.location, location) || other.location == location)&&(identical(other.statusBadge, statusBadge) || other.statusBadge == statusBadge)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.aboutMe, aboutMe) || other.aboutMe == aboutMe)&&(identical(other.whatsappNumber, whatsappNumber) || other.whatsappNumber == whatsappNumber)&&(identical(other.whatsappDefaultMessage, whatsappDefaultMessage) || other.whatsappDefaultMessage == whatsappDefaultMessage)&&(identical(other.cvPdfUrl, cvPdfUrl) || other.cvPdfUrl == cvPdfUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,role,location,statusBadge,avatarUrl,aboutMe,whatsappNumber,whatsappDefaultMessage,cvPdfUrl);

@override
String toString() {
  return 'CandidateInfo(name: $name, role: $role, location: $location, statusBadge: $statusBadge, avatarUrl: $avatarUrl, aboutMe: $aboutMe, whatsappNumber: $whatsappNumber, whatsappDefaultMessage: $whatsappDefaultMessage, cvPdfUrl: $cvPdfUrl)';
}


}

/// @nodoc
abstract mixin class $CandidateInfoCopyWith<$Res>  {
  factory $CandidateInfoCopyWith(CandidateInfo value, $Res Function(CandidateInfo) _then) = _$CandidateInfoCopyWithImpl;
@useResult
$Res call({
 String name, String role, String location, String statusBadge, String avatarUrl, String aboutMe, String whatsappNumber, String whatsappDefaultMessage, String cvPdfUrl
});




}
/// @nodoc
class _$CandidateInfoCopyWithImpl<$Res>
    implements $CandidateInfoCopyWith<$Res> {
  _$CandidateInfoCopyWithImpl(this._self, this._then);

  final CandidateInfo _self;
  final $Res Function(CandidateInfo) _then;

/// Create a copy of CandidateInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? role = null,Object? location = null,Object? statusBadge = null,Object? avatarUrl = null,Object? aboutMe = null,Object? whatsappNumber = null,Object? whatsappDefaultMessage = null,Object? cvPdfUrl = null,}) {
  return _then(CandidateInfo(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,statusBadge: null == statusBadge ? _self.statusBadge : statusBadge // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,aboutMe: null == aboutMe ? _self.aboutMe : aboutMe // ignore: cast_nullable_to_non_nullable
as String,whatsappNumber: null == whatsappNumber ? _self.whatsappNumber : whatsappNumber // ignore: cast_nullable_to_non_nullable
as String,whatsappDefaultMessage: null == whatsappDefaultMessage ? _self.whatsappDefaultMessage : whatsappDefaultMessage // ignore: cast_nullable_to_non_nullable
as String,cvPdfUrl: null == cvPdfUrl ? _self.cvPdfUrl : cvPdfUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CandidateInfo].
extension CandidateInfoPatterns on CandidateInfo {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CandidateInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CandidateInfo() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CandidateInfo value)  $default,){
final _that = this;
switch (_that) {
case _CandidateInfo():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CandidateInfo value)?  $default,){
final _that = this;
switch (_that) {
case _CandidateInfo() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String role,  String location,  String statusBadge,  String avatarUrl,  String aboutMe,  String whatsappNumber,  String whatsappDefaultMessage,  String cvPdfUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CandidateInfo() when $default != null:
return $default(_that.name,_that.role,_that.location,_that.statusBadge,_that.avatarUrl,_that.aboutMe,_that.whatsappNumber,_that.whatsappDefaultMessage,_that.cvPdfUrl);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String role,  String location,  String statusBadge,  String avatarUrl,  String aboutMe,  String whatsappNumber,  String whatsappDefaultMessage,  String cvPdfUrl)  $default,) {final _that = this;
switch (_that) {
case _CandidateInfo():
return $default(_that.name,_that.role,_that.location,_that.statusBadge,_that.avatarUrl,_that.aboutMe,_that.whatsappNumber,_that.whatsappDefaultMessage,_that.cvPdfUrl);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String role,  String location,  String statusBadge,  String avatarUrl,  String aboutMe,  String whatsappNumber,  String whatsappDefaultMessage,  String cvPdfUrl)?  $default,) {final _that = this;
switch (_that) {
case _CandidateInfo() when $default != null:
return $default(_that.name,_that.role,_that.location,_that.statusBadge,_that.avatarUrl,_that.aboutMe,_that.whatsappNumber,_that.whatsappDefaultMessage,_that.cvPdfUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CandidateInfo implements CandidateInfo {
  const _CandidateInfo({required this.name, required this.role, required this.location, required this.statusBadge, required this.avatarUrl, required this.aboutMe, required this.whatsappNumber, required this.whatsappDefaultMessage, required this.cvPdfUrl});
  factory _CandidateInfo.fromJson(Map<String, dynamic> json) => _$CandidateInfoFromJson(json);

@override final  String name;
@override final  String role;
@override final  String location;
@override final  String statusBadge;
@override final  String avatarUrl;
@override final  String aboutMe;
@override final  String whatsappNumber;
@override final  String whatsappDefaultMessage;
@override final  String cvPdfUrl;

/// Create a copy of CandidateInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CandidateInfoCopyWith<_CandidateInfo> get copyWith => __$CandidateInfoCopyWithImpl<_CandidateInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CandidateInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CandidateInfo&&(identical(other.name, name) || other.name == name)&&(identical(other.role, role) || other.role == role)&&(identical(other.location, location) || other.location == location)&&(identical(other.statusBadge, statusBadge) || other.statusBadge == statusBadge)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.aboutMe, aboutMe) || other.aboutMe == aboutMe)&&(identical(other.whatsappNumber, whatsappNumber) || other.whatsappNumber == whatsappNumber)&&(identical(other.whatsappDefaultMessage, whatsappDefaultMessage) || other.whatsappDefaultMessage == whatsappDefaultMessage)&&(identical(other.cvPdfUrl, cvPdfUrl) || other.cvPdfUrl == cvPdfUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,role,location,statusBadge,avatarUrl,aboutMe,whatsappNumber,whatsappDefaultMessage,cvPdfUrl);

@override
String toString() {
  return 'CandidateInfo(name: $name, role: $role, location: $location, statusBadge: $statusBadge, avatarUrl: $avatarUrl, aboutMe: $aboutMe, whatsappNumber: $whatsappNumber, whatsappDefaultMessage: $whatsappDefaultMessage, cvPdfUrl: $cvPdfUrl)';
}


}

/// @nodoc
abstract mixin class _$CandidateInfoCopyWith<$Res> implements $CandidateInfoCopyWith<$Res> {
  factory _$CandidateInfoCopyWith(_CandidateInfo value, $Res Function(_CandidateInfo) _then) = __$CandidateInfoCopyWithImpl;
@override @useResult
$Res call({
 String name, String role, String location, String statusBadge, String avatarUrl, String aboutMe, String whatsappNumber, String whatsappDefaultMessage, String cvPdfUrl
});




}
/// @nodoc
class __$CandidateInfoCopyWithImpl<$Res>
    implements _$CandidateInfoCopyWith<$Res> {
  __$CandidateInfoCopyWithImpl(this._self, this._then);

  final _CandidateInfo _self;
  final $Res Function(_CandidateInfo) _then;

/// Create a copy of CandidateInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? role = null,Object? location = null,Object? statusBadge = null,Object? avatarUrl = null,Object? aboutMe = null,Object? whatsappNumber = null,Object? whatsappDefaultMessage = null,Object? cvPdfUrl = null,}) {
  return _then(_CandidateInfo(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,statusBadge: null == statusBadge ? _self.statusBadge : statusBadge // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,aboutMe: null == aboutMe ? _self.aboutMe : aboutMe // ignore: cast_nullable_to_non_nullable
as String,whatsappNumber: null == whatsappNumber ? _self.whatsappNumber : whatsappNumber // ignore: cast_nullable_to_non_nullable
as String,whatsappDefaultMessage: null == whatsappDefaultMessage ? _self.whatsappDefaultMessage : whatsappDefaultMessage // ignore: cast_nullable_to_non_nullable
as String,cvPdfUrl: null == cvPdfUrl ? _self.cvPdfUrl : cvPdfUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$CandidateStats {

 String get pengalaman; String get kesiapan; String get statusKerja;
/// Create a copy of CandidateStats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CandidateStatsCopyWith<CandidateStats> get copyWith => _$CandidateStatsCopyWithImpl<CandidateStats>(this as CandidateStats, _$identity);

  /// Serializes this CandidateStats to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CandidateStats&&(identical(other.pengalaman, pengalaman) || other.pengalaman == pengalaman)&&(identical(other.kesiapan, kesiapan) || other.kesiapan == kesiapan)&&(identical(other.statusKerja, statusKerja) || other.statusKerja == statusKerja));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pengalaman,kesiapan,statusKerja);

@override
String toString() {
  return 'CandidateStats(pengalaman: $pengalaman, kesiapan: $kesiapan, statusKerja: $statusKerja)';
}


}

/// @nodoc
abstract mixin class $CandidateStatsCopyWith<$Res>  {
  factory $CandidateStatsCopyWith(CandidateStats value, $Res Function(CandidateStats) _then) = _$CandidateStatsCopyWithImpl;
@useResult
$Res call({
 String pengalaman, String kesiapan, String statusKerja
});




}
/// @nodoc
class _$CandidateStatsCopyWithImpl<$Res>
    implements $CandidateStatsCopyWith<$Res> {
  _$CandidateStatsCopyWithImpl(this._self, this._then);

  final CandidateStats _self;
  final $Res Function(CandidateStats) _then;

/// Create a copy of CandidateStats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pengalaman = null,Object? kesiapan = null,Object? statusKerja = null,}) {
  return _then(CandidateStats(
pengalaman: null == pengalaman ? _self.pengalaman : pengalaman // ignore: cast_nullable_to_non_nullable
as String,kesiapan: null == kesiapan ? _self.kesiapan : kesiapan // ignore: cast_nullable_to_non_nullable
as String,statusKerja: null == statusKerja ? _self.statusKerja : statusKerja // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CandidateStats].
extension CandidateStatsPatterns on CandidateStats {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CandidateStats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CandidateStats() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CandidateStats value)  $default,){
final _that = this;
switch (_that) {
case _CandidateStats():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CandidateStats value)?  $default,){
final _that = this;
switch (_that) {
case _CandidateStats() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String pengalaman,  String kesiapan,  String statusKerja)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CandidateStats() when $default != null:
return $default(_that.pengalaman,_that.kesiapan,_that.statusKerja);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String pengalaman,  String kesiapan,  String statusKerja)  $default,) {final _that = this;
switch (_that) {
case _CandidateStats():
return $default(_that.pengalaman,_that.kesiapan,_that.statusKerja);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String pengalaman,  String kesiapan,  String statusKerja)?  $default,) {final _that = this;
switch (_that) {
case _CandidateStats() when $default != null:
return $default(_that.pengalaman,_that.kesiapan,_that.statusKerja);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CandidateStats implements CandidateStats {
  const _CandidateStats({required this.pengalaman, required this.kesiapan, required this.statusKerja});
  factory _CandidateStats.fromJson(Map<String, dynamic> json) => _$CandidateStatsFromJson(json);

@override final  String pengalaman;
@override final  String kesiapan;
@override final  String statusKerja;

/// Create a copy of CandidateStats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CandidateStatsCopyWith<_CandidateStats> get copyWith => __$CandidateStatsCopyWithImpl<_CandidateStats>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CandidateStatsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CandidateStats&&(identical(other.pengalaman, pengalaman) || other.pengalaman == pengalaman)&&(identical(other.kesiapan, kesiapan) || other.kesiapan == kesiapan)&&(identical(other.statusKerja, statusKerja) || other.statusKerja == statusKerja));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pengalaman,kesiapan,statusKerja);

@override
String toString() {
  return 'CandidateStats(pengalaman: $pengalaman, kesiapan: $kesiapan, statusKerja: $statusKerja)';
}


}

/// @nodoc
abstract mixin class _$CandidateStatsCopyWith<$Res> implements $CandidateStatsCopyWith<$Res> {
  factory _$CandidateStatsCopyWith(_CandidateStats value, $Res Function(_CandidateStats) _then) = __$CandidateStatsCopyWithImpl;
@override @useResult
$Res call({
 String pengalaman, String kesiapan, String statusKerja
});




}
/// @nodoc
class __$CandidateStatsCopyWithImpl<$Res>
    implements _$CandidateStatsCopyWith<$Res> {
  __$CandidateStatsCopyWithImpl(this._self, this._then);

  final _CandidateStats _self;
  final $Res Function(_CandidateStats) _then;

/// Create a copy of CandidateStats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pengalaman = null,Object? kesiapan = null,Object? statusKerja = null,}) {
  return _then(_CandidateStats(
pengalaman: null == pengalaman ? _self.pengalaman : pengalaman // ignore: cast_nullable_to_non_nullable
as String,kesiapan: null == kesiapan ? _self.kesiapan : kesiapan // ignore: cast_nullable_to_non_nullable
as String,statusKerja: null == statusKerja ? _self.statusKerja : statusKerja // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SkillItem {

 String get iconName; String get title; String get subtitle; String get level; bool get isExpert;
/// Create a copy of SkillItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SkillItemCopyWith<SkillItem> get copyWith => _$SkillItemCopyWithImpl<SkillItem>(this as SkillItem, _$identity);

  /// Serializes this SkillItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SkillItem&&(identical(other.iconName, iconName) || other.iconName == iconName)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.level, level) || other.level == level)&&(identical(other.isExpert, isExpert) || other.isExpert == isExpert));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,iconName,title,subtitle,level,isExpert);

@override
String toString() {
  return 'SkillItem(iconName: $iconName, title: $title, subtitle: $subtitle, level: $level, isExpert: $isExpert)';
}


}

/// @nodoc
abstract mixin class $SkillItemCopyWith<$Res>  {
  factory $SkillItemCopyWith(SkillItem value, $Res Function(SkillItem) _then) = _$SkillItemCopyWithImpl;
@useResult
$Res call({
 String iconName, String title, String subtitle, String level, bool isExpert
});




}
/// @nodoc
class _$SkillItemCopyWithImpl<$Res>
    implements $SkillItemCopyWith<$Res> {
  _$SkillItemCopyWithImpl(this._self, this._then);

  final SkillItem _self;
  final $Res Function(SkillItem) _then;

/// Create a copy of SkillItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? iconName = null,Object? title = null,Object? subtitle = null,Object? level = null,Object? isExpert = null,}) {
  return _then(SkillItem(
iconName: null == iconName ? _self.iconName : iconName // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String,isExpert: null == isExpert ? _self.isExpert : isExpert // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SkillItem].
extension SkillItemPatterns on SkillItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SkillItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SkillItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SkillItem value)  $default,){
final _that = this;
switch (_that) {
case _SkillItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SkillItem value)?  $default,){
final _that = this;
switch (_that) {
case _SkillItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String iconName,  String title,  String subtitle,  String level,  bool isExpert)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SkillItem() when $default != null:
return $default(_that.iconName,_that.title,_that.subtitle,_that.level,_that.isExpert);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String iconName,  String title,  String subtitle,  String level,  bool isExpert)  $default,) {final _that = this;
switch (_that) {
case _SkillItem():
return $default(_that.iconName,_that.title,_that.subtitle,_that.level,_that.isExpert);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String iconName,  String title,  String subtitle,  String level,  bool isExpert)?  $default,) {final _that = this;
switch (_that) {
case _SkillItem() when $default != null:
return $default(_that.iconName,_that.title,_that.subtitle,_that.level,_that.isExpert);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SkillItem implements SkillItem {
  const _SkillItem({required this.iconName, required this.title, required this.subtitle, required this.level, required this.isExpert});
  factory _SkillItem.fromJson(Map<String, dynamic> json) => _$SkillItemFromJson(json);

@override final  String iconName;
@override final  String title;
@override final  String subtitle;
@override final  String level;
@override final  bool isExpert;

/// Create a copy of SkillItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SkillItemCopyWith<_SkillItem> get copyWith => __$SkillItemCopyWithImpl<_SkillItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SkillItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SkillItem&&(identical(other.iconName, iconName) || other.iconName == iconName)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.level, level) || other.level == level)&&(identical(other.isExpert, isExpert) || other.isExpert == isExpert));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,iconName,title,subtitle,level,isExpert);

@override
String toString() {
  return 'SkillItem(iconName: $iconName, title: $title, subtitle: $subtitle, level: $level, isExpert: $isExpert)';
}


}

/// @nodoc
abstract mixin class _$SkillItemCopyWith<$Res> implements $SkillItemCopyWith<$Res> {
  factory _$SkillItemCopyWith(_SkillItem value, $Res Function(_SkillItem) _then) = __$SkillItemCopyWithImpl;
@override @useResult
$Res call({
 String iconName, String title, String subtitle, String level, bool isExpert
});




}
/// @nodoc
class __$SkillItemCopyWithImpl<$Res>
    implements _$SkillItemCopyWith<$Res> {
  __$SkillItemCopyWithImpl(this._self, this._then);

  final _SkillItem _self;
  final $Res Function(_SkillItem) _then;

/// Create a copy of SkillItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? iconName = null,Object? title = null,Object? subtitle = null,Object? level = null,Object? isExpert = null,}) {
  return _then(_SkillItem(
iconName: null == iconName ? _self.iconName : iconName // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String,isExpert: null == isExpert ? _self.isExpert : isExpert // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$ExperienceItem {

 String get period; String get role; String get company; String get description; List<String> get tags; bool get isCurrent; String get dotColorHex;
/// Create a copy of ExperienceItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExperienceItemCopyWith<ExperienceItem> get copyWith => _$ExperienceItemCopyWithImpl<ExperienceItem>(this as ExperienceItem, _$identity);

  /// Serializes this ExperienceItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExperienceItem&&(identical(other.period, period) || other.period == period)&&(identical(other.role, role) || other.role == role)&&(identical(other.company, company) || other.company == company)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.isCurrent, isCurrent) || other.isCurrent == isCurrent)&&(identical(other.dotColorHex, dotColorHex) || other.dotColorHex == dotColorHex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,period,role,company,description,const DeepCollectionEquality().hash(tags),isCurrent,dotColorHex);

@override
String toString() {
  return 'ExperienceItem(period: $period, role: $role, company: $company, description: $description, tags: $tags, isCurrent: $isCurrent, dotColorHex: $dotColorHex)';
}


}

/// @nodoc
abstract mixin class $ExperienceItemCopyWith<$Res>  {
  factory $ExperienceItemCopyWith(ExperienceItem value, $Res Function(ExperienceItem) _then) = _$ExperienceItemCopyWithImpl;
@useResult
$Res call({
 String period, String role, String company, String description, List<String> tags, bool isCurrent, String dotColorHex
});




}
/// @nodoc
class _$ExperienceItemCopyWithImpl<$Res>
    implements $ExperienceItemCopyWith<$Res> {
  _$ExperienceItemCopyWithImpl(this._self, this._then);

  final ExperienceItem _self;
  final $Res Function(ExperienceItem) _then;

/// Create a copy of ExperienceItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? period = null,Object? role = null,Object? company = null,Object? description = null,Object? tags = null,Object? isCurrent = null,Object? dotColorHex = null,}) {
  return _then(ExperienceItem(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,isCurrent: null == isCurrent ? _self.isCurrent : isCurrent // ignore: cast_nullable_to_non_nullable
as bool,dotColorHex: null == dotColorHex ? _self.dotColorHex : dotColorHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ExperienceItem].
extension ExperienceItemPatterns on ExperienceItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExperienceItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExperienceItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExperienceItem value)  $default,){
final _that = this;
switch (_that) {
case _ExperienceItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExperienceItem value)?  $default,){
final _that = this;
switch (_that) {
case _ExperienceItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String period,  String role,  String company,  String description,  List<String> tags,  bool isCurrent,  String dotColorHex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExperienceItem() when $default != null:
return $default(_that.period,_that.role,_that.company,_that.description,_that.tags,_that.isCurrent,_that.dotColorHex);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String period,  String role,  String company,  String description,  List<String> tags,  bool isCurrent,  String dotColorHex)  $default,) {final _that = this;
switch (_that) {
case _ExperienceItem():
return $default(_that.period,_that.role,_that.company,_that.description,_that.tags,_that.isCurrent,_that.dotColorHex);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String period,  String role,  String company,  String description,  List<String> tags,  bool isCurrent,  String dotColorHex)?  $default,) {final _that = this;
switch (_that) {
case _ExperienceItem() when $default != null:
return $default(_that.period,_that.role,_that.company,_that.description,_that.tags,_that.isCurrent,_that.dotColorHex);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExperienceItem implements ExperienceItem {
  const _ExperienceItem({required this.period, required this.role, required this.company, required this.description, required  List<String> tags, required this.isCurrent, required this.dotColorHex}): _tags = tags;
  factory _ExperienceItem.fromJson(Map<String, dynamic> json) => _$ExperienceItemFromJson(json);

@override final  String period;
@override final  String role;
@override final  String company;
@override final  String description;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override final  bool isCurrent;
@override final  String dotColorHex;

/// Create a copy of ExperienceItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExperienceItemCopyWith<_ExperienceItem> get copyWith => __$ExperienceItemCopyWithImpl<_ExperienceItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExperienceItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExperienceItem&&(identical(other.period, period) || other.period == period)&&(identical(other.role, role) || other.role == role)&&(identical(other.company, company) || other.company == company)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.isCurrent, isCurrent) || other.isCurrent == isCurrent)&&(identical(other.dotColorHex, dotColorHex) || other.dotColorHex == dotColorHex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,period,role,company,description,const DeepCollectionEquality().hash(_tags),isCurrent,dotColorHex);

@override
String toString() {
  return 'ExperienceItem(period: $period, role: $role, company: $company, description: $description, tags: $tags, isCurrent: $isCurrent, dotColorHex: $dotColorHex)';
}


}

/// @nodoc
abstract mixin class _$ExperienceItemCopyWith<$Res> implements $ExperienceItemCopyWith<$Res> {
  factory _$ExperienceItemCopyWith(_ExperienceItem value, $Res Function(_ExperienceItem) _then) = __$ExperienceItemCopyWithImpl;
@override @useResult
$Res call({
 String period, String role, String company, String description, List<String> tags, bool isCurrent, String dotColorHex
});




}
/// @nodoc
class __$ExperienceItemCopyWithImpl<$Res>
    implements _$ExperienceItemCopyWith<$Res> {
  __$ExperienceItemCopyWithImpl(this._self, this._then);

  final _ExperienceItem _self;
  final $Res Function(_ExperienceItem) _then;

/// Create a copy of ExperienceItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? period = null,Object? role = null,Object? company = null,Object? description = null,Object? tags = null,Object? isCurrent = null,Object? dotColorHex = null,}) {
  return _then(_ExperienceItem(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,isCurrent: null == isCurrent ? _self.isCurrent : isCurrent // ignore: cast_nullable_to_non_nullable
as bool,dotColorHex: null == dotColorHex ? _self.dotColorHex : dotColorHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$CertificationInfo {

 String get title; String get issuer; String get regNumber; String get badgeText; String get imageUrl;
/// Create a copy of CertificationInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CertificationInfoCopyWith<CertificationInfo> get copyWith => _$CertificationInfoCopyWithImpl<CertificationInfo>(this as CertificationInfo, _$identity);

  /// Serializes this CertificationInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CertificationInfo&&(identical(other.title, title) || other.title == title)&&(identical(other.issuer, issuer) || other.issuer == issuer)&&(identical(other.regNumber, regNumber) || other.regNumber == regNumber)&&(identical(other.badgeText, badgeText) || other.badgeText == badgeText)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,issuer,regNumber,badgeText,imageUrl);

@override
String toString() {
  return 'CertificationInfo(title: $title, issuer: $issuer, regNumber: $regNumber, badgeText: $badgeText, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $CertificationInfoCopyWith<$Res>  {
  factory $CertificationInfoCopyWith(CertificationInfo value, $Res Function(CertificationInfo) _then) = _$CertificationInfoCopyWithImpl;
@useResult
$Res call({
 String title, String issuer, String regNumber, String badgeText, String imageUrl
});




}
/// @nodoc
class _$CertificationInfoCopyWithImpl<$Res>
    implements $CertificationInfoCopyWith<$Res> {
  _$CertificationInfoCopyWithImpl(this._self, this._then);

  final CertificationInfo _self;
  final $Res Function(CertificationInfo) _then;

/// Create a copy of CertificationInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? issuer = null,Object? regNumber = null,Object? badgeText = null,Object? imageUrl = null,}) {
  return _then(CertificationInfo(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,issuer: null == issuer ? _self.issuer : issuer // ignore: cast_nullable_to_non_nullable
as String,regNumber: null == regNumber ? _self.regNumber : regNumber // ignore: cast_nullable_to_non_nullable
as String,badgeText: null == badgeText ? _self.badgeText : badgeText // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CertificationInfo].
extension CertificationInfoPatterns on CertificationInfo {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CertificationInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CertificationInfo() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CertificationInfo value)  $default,){
final _that = this;
switch (_that) {
case _CertificationInfo():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CertificationInfo value)?  $default,){
final _that = this;
switch (_that) {
case _CertificationInfo() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String issuer,  String regNumber,  String badgeText,  String imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CertificationInfo() when $default != null:
return $default(_that.title,_that.issuer,_that.regNumber,_that.badgeText,_that.imageUrl);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String issuer,  String regNumber,  String badgeText,  String imageUrl)  $default,) {final _that = this;
switch (_that) {
case _CertificationInfo():
return $default(_that.title,_that.issuer,_that.regNumber,_that.badgeText,_that.imageUrl);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String issuer,  String regNumber,  String badgeText,  String imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _CertificationInfo() when $default != null:
return $default(_that.title,_that.issuer,_that.regNumber,_that.badgeText,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CertificationInfo implements CertificationInfo {
  const _CertificationInfo({required this.title, required this.issuer, required this.regNumber, required this.badgeText, required this.imageUrl});
  factory _CertificationInfo.fromJson(Map<String, dynamic> json) => _$CertificationInfoFromJson(json);

@override final  String title;
@override final  String issuer;
@override final  String regNumber;
@override final  String badgeText;
@override final  String imageUrl;

/// Create a copy of CertificationInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CertificationInfoCopyWith<_CertificationInfo> get copyWith => __$CertificationInfoCopyWithImpl<_CertificationInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CertificationInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CertificationInfo&&(identical(other.title, title) || other.title == title)&&(identical(other.issuer, issuer) || other.issuer == issuer)&&(identical(other.regNumber, regNumber) || other.regNumber == regNumber)&&(identical(other.badgeText, badgeText) || other.badgeText == badgeText)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,issuer,regNumber,badgeText,imageUrl);

@override
String toString() {
  return 'CertificationInfo(title: $title, issuer: $issuer, regNumber: $regNumber, badgeText: $badgeText, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$CertificationInfoCopyWith<$Res> implements $CertificationInfoCopyWith<$Res> {
  factory _$CertificationInfoCopyWith(_CertificationInfo value, $Res Function(_CertificationInfo) _then) = __$CertificationInfoCopyWithImpl;
@override @useResult
$Res call({
 String title, String issuer, String regNumber, String badgeText, String imageUrl
});




}
/// @nodoc
class __$CertificationInfoCopyWithImpl<$Res>
    implements _$CertificationInfoCopyWith<$Res> {
  __$CertificationInfoCopyWithImpl(this._self, this._then);

  final _CertificationInfo _self;
  final $Res Function(_CertificationInfo) _then;

/// Create a copy of CertificationInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? issuer = null,Object? regNumber = null,Object? badgeText = null,Object? imageUrl = null,}) {
  return _then(_CertificationInfo(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,issuer: null == issuer ? _self.issuer : issuer // ignore: cast_nullable_to_non_nullable
as String,regNumber: null == regNumber ? _self.regNumber : regNumber // ignore: cast_nullable_to_non_nullable
as String,badgeText: null == badgeText ? _self.badgeText : badgeText // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ProfileData {

 CandidateInfo get candidate; CandidateStats get stats; List<SkillItem> get skills; List<String> get supportingCompetencies; List<ExperienceItem> get experiences; CertificationInfo get certification;
/// Create a copy of ProfileData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileDataCopyWith<ProfileData> get copyWith => _$ProfileDataCopyWithImpl<ProfileData>(this as ProfileData, _$identity);

  /// Serializes this ProfileData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileData&&(identical(other.candidate, candidate) || other.candidate == candidate)&&(identical(other.stats, stats) || other.stats == stats)&&const DeepCollectionEquality().equals(other.skills, skills)&&const DeepCollectionEquality().equals(other.supportingCompetencies, supportingCompetencies)&&const DeepCollectionEquality().equals(other.experiences, experiences)&&(identical(other.certification, certification) || other.certification == certification));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,candidate,stats,const DeepCollectionEquality().hash(skills),const DeepCollectionEquality().hash(supportingCompetencies),const DeepCollectionEquality().hash(experiences),certification);

@override
String toString() {
  return 'ProfileData(candidate: $candidate, stats: $stats, skills: $skills, supportingCompetencies: $supportingCompetencies, experiences: $experiences, certification: $certification)';
}


}

/// @nodoc
abstract mixin class $ProfileDataCopyWith<$Res>  {
  factory $ProfileDataCopyWith(ProfileData value, $Res Function(ProfileData) _then) = _$ProfileDataCopyWithImpl;
@useResult
$Res call({
 CandidateInfo candidate, CandidateStats stats, List<SkillItem> skills, List<String> supportingCompetencies, List<ExperienceItem> experiences, CertificationInfo certification
});


$CandidateInfoCopyWith<$Res> get candidate;$CandidateStatsCopyWith<$Res> get stats;$CertificationInfoCopyWith<$Res> get certification;

}
/// @nodoc
class _$ProfileDataCopyWithImpl<$Res>
    implements $ProfileDataCopyWith<$Res> {
  _$ProfileDataCopyWithImpl(this._self, this._then);

  final ProfileData _self;
  final $Res Function(ProfileData) _then;

/// Create a copy of ProfileData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? candidate = null,Object? stats = null,Object? skills = null,Object? supportingCompetencies = null,Object? experiences = null,Object? certification = null,}) {
  return _then(ProfileData(
candidate: null == candidate ? _self.candidate : candidate // ignore: cast_nullable_to_non_nullable
as CandidateInfo,stats: null == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as CandidateStats,skills: null == skills ? _self.skills : skills // ignore: cast_nullable_to_non_nullable
as List<SkillItem>,supportingCompetencies: null == supportingCompetencies ? _self.supportingCompetencies : supportingCompetencies // ignore: cast_nullable_to_non_nullable
as List<String>,experiences: null == experiences ? _self.experiences : experiences // ignore: cast_nullable_to_non_nullable
as List<ExperienceItem>,certification: null == certification ? _self.certification : certification // ignore: cast_nullable_to_non_nullable
as CertificationInfo,
  ));
}
/// Create a copy of ProfileData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CandidateInfoCopyWith<$Res> get candidate {
  
  return $CandidateInfoCopyWith<$Res>(_self.candidate, (value) {
    return _then(_self.copyWith(candidate: value));
  });
}/// Create a copy of ProfileData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CandidateStatsCopyWith<$Res> get stats {
  
  return $CandidateStatsCopyWith<$Res>(_self.stats, (value) {
    return _then(_self.copyWith(stats: value));
  });
}/// Create a copy of ProfileData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CertificationInfoCopyWith<$Res> get certification {
  
  return $CertificationInfoCopyWith<$Res>(_self.certification, (value) {
    return _then(_self.copyWith(certification: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfileData].
extension ProfileDataPatterns on ProfileData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileData value)  $default,){
final _that = this;
switch (_that) {
case _ProfileData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileData value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CandidateInfo candidate,  CandidateStats stats,  List<SkillItem> skills,  List<String> supportingCompetencies,  List<ExperienceItem> experiences,  CertificationInfo certification)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileData() when $default != null:
return $default(_that.candidate,_that.stats,_that.skills,_that.supportingCompetencies,_that.experiences,_that.certification);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CandidateInfo candidate,  CandidateStats stats,  List<SkillItem> skills,  List<String> supportingCompetencies,  List<ExperienceItem> experiences,  CertificationInfo certification)  $default,) {final _that = this;
switch (_that) {
case _ProfileData():
return $default(_that.candidate,_that.stats,_that.skills,_that.supportingCompetencies,_that.experiences,_that.certification);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CandidateInfo candidate,  CandidateStats stats,  List<SkillItem> skills,  List<String> supportingCompetencies,  List<ExperienceItem> experiences,  CertificationInfo certification)?  $default,) {final _that = this;
switch (_that) {
case _ProfileData() when $default != null:
return $default(_that.candidate,_that.stats,_that.skills,_that.supportingCompetencies,_that.experiences,_that.certification);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileData implements ProfileData {
  const _ProfileData({required this.candidate, required this.stats, required  List<SkillItem> skills, required  List<String> supportingCompetencies, required  List<ExperienceItem> experiences, required this.certification}): _skills = skills,_supportingCompetencies = supportingCompetencies,_experiences = experiences;
  factory _ProfileData.fromJson(Map<String, dynamic> json) => _$ProfileDataFromJson(json);

@override final  CandidateInfo candidate;
@override final  CandidateStats stats;
 final  List<SkillItem> _skills;
@override List<SkillItem> get skills {
  if (_skills is EqualUnmodifiableListView) return _skills;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_skills);
}

 final  List<String> _supportingCompetencies;
@override List<String> get supportingCompetencies {
  if (_supportingCompetencies is EqualUnmodifiableListView) return _supportingCompetencies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_supportingCompetencies);
}

 final  List<ExperienceItem> _experiences;
@override List<ExperienceItem> get experiences {
  if (_experiences is EqualUnmodifiableListView) return _experiences;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_experiences);
}

@override final  CertificationInfo certification;

/// Create a copy of ProfileData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileDataCopyWith<_ProfileData> get copyWith => __$ProfileDataCopyWithImpl<_ProfileData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileData&&(identical(other.candidate, candidate) || other.candidate == candidate)&&(identical(other.stats, stats) || other.stats == stats)&&const DeepCollectionEquality().equals(other._skills, _skills)&&const DeepCollectionEquality().equals(other._supportingCompetencies, _supportingCompetencies)&&const DeepCollectionEquality().equals(other._experiences, _experiences)&&(identical(other.certification, certification) || other.certification == certification));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,candidate,stats,const DeepCollectionEquality().hash(_skills),const DeepCollectionEquality().hash(_supportingCompetencies),const DeepCollectionEquality().hash(_experiences),certification);

@override
String toString() {
  return 'ProfileData(candidate: $candidate, stats: $stats, skills: $skills, supportingCompetencies: $supportingCompetencies, experiences: $experiences, certification: $certification)';
}


}

/// @nodoc
abstract mixin class _$ProfileDataCopyWith<$Res> implements $ProfileDataCopyWith<$Res> {
  factory _$ProfileDataCopyWith(_ProfileData value, $Res Function(_ProfileData) _then) = __$ProfileDataCopyWithImpl;
@override @useResult
$Res call({
 CandidateInfo candidate, CandidateStats stats, List<SkillItem> skills, List<String> supportingCompetencies, List<ExperienceItem> experiences, CertificationInfo certification
});


@override $CandidateInfoCopyWith<$Res> get candidate;@override $CandidateStatsCopyWith<$Res> get stats;@override $CertificationInfoCopyWith<$Res> get certification;

}
/// @nodoc
class __$ProfileDataCopyWithImpl<$Res>
    implements _$ProfileDataCopyWith<$Res> {
  __$ProfileDataCopyWithImpl(this._self, this._then);

  final _ProfileData _self;
  final $Res Function(_ProfileData) _then;

/// Create a copy of ProfileData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? candidate = null,Object? stats = null,Object? skills = null,Object? supportingCompetencies = null,Object? experiences = null,Object? certification = null,}) {
  return _then(_ProfileData(
candidate: null == candidate ? _self.candidate : candidate // ignore: cast_nullable_to_non_nullable
as CandidateInfo,stats: null == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as CandidateStats,skills: null == skills ? _self._skills : skills // ignore: cast_nullable_to_non_nullable
as List<SkillItem>,supportingCompetencies: null == supportingCompetencies ? _self._supportingCompetencies : supportingCompetencies // ignore: cast_nullable_to_non_nullable
as List<String>,experiences: null == experiences ? _self._experiences : experiences // ignore: cast_nullable_to_non_nullable
as List<ExperienceItem>,certification: null == certification ? _self.certification : certification // ignore: cast_nullable_to_non_nullable
as CertificationInfo,
  ));
}

/// Create a copy of ProfileData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CandidateInfoCopyWith<$Res> get candidate {
  
  return $CandidateInfoCopyWith<$Res>(_self.candidate, (value) {
    return _then(_self.copyWith(candidate: value));
  });
}/// Create a copy of ProfileData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CandidateStatsCopyWith<$Res> get stats {
  
  return $CandidateStatsCopyWith<$Res>(_self.stats, (value) {
    return _then(_self.copyWith(stats: value));
  });
}/// Create a copy of ProfileData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CertificationInfoCopyWith<$Res> get certification {
  
  return $CertificationInfoCopyWith<$Res>(_self.certification, (value) {
    return _then(_self.copyWith(certification: value));
  });
}
}

// dart format on
