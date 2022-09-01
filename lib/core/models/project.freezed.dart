// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'project.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Project _$ProjectFromJson(Map<String, dynamic> json) {
  return _Project.fromJson(json);
}

/// @nodoc
mixin _$Project {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get projectURL => throw _privateConstructorUsedError;
  String get websiteURL => throw _privateConstructorUsedError;
  List<Technology> get technologies => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectCopyWith<Project> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) =
      _$ProjectCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String description,
      String projectURL,
      String websiteURL,
      List<Technology> technologies});
}

/// @nodoc
class _$ProjectCopyWithImpl<$Res> implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._value, this._then);

  final Project _value;
  // ignore: unused_field
  final $Res Function(Project) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? projectURL = freezed,
    Object? websiteURL = freezed,
    Object? technologies = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      projectURL: projectURL == freezed
          ? _value.projectURL
          : projectURL // ignore: cast_nullable_to_non_nullable
              as String,
      websiteURL: websiteURL == freezed
          ? _value.websiteURL
          : websiteURL // ignore: cast_nullable_to_non_nullable
              as String,
      technologies: technologies == freezed
          ? _value.technologies
          : technologies // ignore: cast_nullable_to_non_nullable
              as List<Technology>,
    ));
  }
}

/// @nodoc
abstract class _$$_ProjectCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$$_ProjectCopyWith(
          _$_Project value, $Res Function(_$_Project) then) =
      __$$_ProjectCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String description,
      String projectURL,
      String websiteURL,
      List<Technology> technologies});
}

/// @nodoc
class __$$_ProjectCopyWithImpl<$Res> extends _$ProjectCopyWithImpl<$Res>
    implements _$$_ProjectCopyWith<$Res> {
  __$$_ProjectCopyWithImpl(_$_Project _value, $Res Function(_$_Project) _then)
      : super(_value, (v) => _then(v as _$_Project));

  @override
  _$_Project get _value => super._value as _$_Project;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? projectURL = freezed,
    Object? websiteURL = freezed,
    Object? technologies = freezed,
  }) {
    return _then(_$_Project(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      projectURL: projectURL == freezed
          ? _value.projectURL
          : projectURL // ignore: cast_nullable_to_non_nullable
              as String,
      websiteURL: websiteURL == freezed
          ? _value.websiteURL
          : websiteURL // ignore: cast_nullable_to_non_nullable
              as String,
      technologies: technologies == freezed
          ? _value._technologies
          : technologies // ignore: cast_nullable_to_non_nullable
              as List<Technology>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Project implements _Project {
  _$_Project(
      {required this.name,
      required this.description,
      required this.projectURL,
      required this.websiteURL,
      final List<Technology> technologies = const []})
      : _technologies = technologies;

  factory _$_Project.fromJson(Map<String, dynamic> json) =>
      _$$_ProjectFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String projectURL;
  @override
  final String websiteURL;
  final List<Technology> _technologies;
  @override
  @JsonKey()
  List<Technology> get technologies {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_technologies);
  }

  @override
  String toString() {
    return 'Project(name: $name, description: $description, projectURL: $projectURL, websiteURL: $websiteURL, technologies: $technologies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Project &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.projectURL, projectURL) &&
            const DeepCollectionEquality()
                .equals(other.websiteURL, websiteURL) &&
            const DeepCollectionEquality()
                .equals(other._technologies, _technologies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(projectURL),
      const DeepCollectionEquality().hash(websiteURL),
      const DeepCollectionEquality().hash(_technologies));

  @JsonKey(ignore: true)
  @override
  _$$_ProjectCopyWith<_$_Project> get copyWith =>
      __$$_ProjectCopyWithImpl<_$_Project>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectToJson(
      this,
    );
  }
}

abstract class _Project implements Project {
  factory _Project(
      {required final String name,
      required final String description,
      required final String projectURL,
      required final String websiteURL,
      final List<Technology> technologies}) = _$_Project;

  factory _Project.fromJson(Map<String, dynamic> json) = _$_Project.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get projectURL;
  @override
  String get websiteURL;
  @override
  List<Technology> get technologies;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectCopyWith<_$_Project> get copyWith =>
      throw _privateConstructorUsedError;
}
