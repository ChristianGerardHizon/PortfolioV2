// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Project _$$_ProjectFromJson(Map<String, dynamic> json) => _$_Project(
      name: json['name'] as String,
      description: json['description'] as String,
      projectURL: json['projectURL'] as String,
      websiteURL: json['websiteURL'] as String,
      technologies: (json['technologies'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$TechnologyEnumMap, e))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ProjectToJson(_$_Project instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'projectURL': instance.projectURL,
      'websiteURL': instance.websiteURL,
      'technologies':
          instance.technologies.map((e) => _$TechnologyEnumMap[e]!).toList(),
    };

const _$TechnologyEnumMap = {
  Technology.android: 'android',
  Technology.flutter: 'flutter',
  Technology.shopify: 'shopify',
  Technology.javascript: 'javascript',
  Technology.ios: 'ios',
  Technology.web: 'web',
  Technology.graphql: 'graphql',
  Technology.firebase: 'firebase',
  Technology.wordpress: 'wordpress',
  Technology.typescript: 'typescript',
  Technology.ionic: 'ionic',
  Technology.opencart: 'opencart',
  Technology.angular: 'angular',
  Technology.php: 'php',
};
