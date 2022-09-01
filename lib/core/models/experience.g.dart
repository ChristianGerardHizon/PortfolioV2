// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experience.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Experience _$$_ExperienceFromJson(Map<String, dynamic> json) =>
    _$_Experience(
      company: json['company'] as String,
      duration: json['duration'] as String,
      position: json['position'] as String,
      duties:
          (json['duties'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ExperienceToJson(_$_Experience instance) =>
    <String, dynamic>{
      'company': instance.company,
      'duration': instance.duration,
      'position': instance.position,
      'duties': instance.duties,
    };
