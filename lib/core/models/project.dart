import 'package:freezed_annotation/freezed_annotation.dart';

import '../core.dart';

part 'project.freezed.dart';
part 'project.g.dart';

@freezed
class Project with _$Project {
  factory Project({
    required String name,
    required String description,
    required String projectURL,
    required String websiteURL,
    @Default([]) List<Technology> technologies,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);
}
