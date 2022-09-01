// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'experience.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Experience _$ExperienceFromJson(Map<String, dynamic> json) {
  return _Experience.fromJson(json);
}

/// @nodoc
mixin _$Experience {
  String get company => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get position => throw _privateConstructorUsedError;
  List<String> get duties => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExperienceCopyWith<Experience> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceCopyWith<$Res> {
  factory $ExperienceCopyWith(
          Experience value, $Res Function(Experience) then) =
      _$ExperienceCopyWithImpl<$Res>;
  $Res call(
      {String company, String duration, String position, List<String> duties});
}

/// @nodoc
class _$ExperienceCopyWithImpl<$Res> implements $ExperienceCopyWith<$Res> {
  _$ExperienceCopyWithImpl(this._value, this._then);

  final Experience _value;
  // ignore: unused_field
  final $Res Function(Experience) _then;

  @override
  $Res call({
    Object? company = freezed,
    Object? duration = freezed,
    Object? position = freezed,
    Object? duties = freezed,
  }) {
    return _then(_value.copyWith(
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      duties: duties == freezed
          ? _value.duties
          : duties // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_ExperienceCopyWith<$Res>
    implements $ExperienceCopyWith<$Res> {
  factory _$$_ExperienceCopyWith(
          _$_Experience value, $Res Function(_$_Experience) then) =
      __$$_ExperienceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String company, String duration, String position, List<String> duties});
}

/// @nodoc
class __$$_ExperienceCopyWithImpl<$Res> extends _$ExperienceCopyWithImpl<$Res>
    implements _$$_ExperienceCopyWith<$Res> {
  __$$_ExperienceCopyWithImpl(
      _$_Experience _value, $Res Function(_$_Experience) _then)
      : super(_value, (v) => _then(v as _$_Experience));

  @override
  _$_Experience get _value => super._value as _$_Experience;

  @override
  $Res call({
    Object? company = freezed,
    Object? duration = freezed,
    Object? position = freezed,
    Object? duties = freezed,
  }) {
    return _then(_$_Experience(
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      duties: duties == freezed
          ? _value._duties
          : duties // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Experience implements _Experience {
  _$_Experience(
      {required this.company,
      required this.duration,
      required this.position,
      required final List<String> duties})
      : _duties = duties;

  factory _$_Experience.fromJson(Map<String, dynamic> json) =>
      _$$_ExperienceFromJson(json);

  @override
  final String company;
  @override
  final String duration;
  @override
  final String position;
  final List<String> _duties;
  @override
  List<String> get duties {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_duties);
  }

  @override
  String toString() {
    return 'Experience(company: $company, duration: $duration, position: $position, duties: $duties)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Experience &&
            const DeepCollectionEquality().equals(other.company, company) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.position, position) &&
            const DeepCollectionEquality().equals(other._duties, _duties));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(company),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(position),
      const DeepCollectionEquality().hash(_duties));

  @JsonKey(ignore: true)
  @override
  _$$_ExperienceCopyWith<_$_Experience> get copyWith =>
      __$$_ExperienceCopyWithImpl<_$_Experience>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExperienceToJson(
      this,
    );
  }
}

abstract class _Experience implements Experience {
  factory _Experience(
      {required final String company,
      required final String duration,
      required final String position,
      required final List<String> duties}) = _$_Experience;

  factory _Experience.fromJson(Map<String, dynamic> json) =
      _$_Experience.fromJson;

  @override
  String get company;
  @override
  String get duration;
  @override
  String get position;
  @override
  List<String> get duties;
  @override
  @JsonKey(ignore: true)
  _$$_ExperienceCopyWith<_$_Experience> get copyWith =>
      throw _privateConstructorUsedError;
}
