import 'enums.dart';

extension ScreenTypeExtension on ScreenType {
  static ScreenType fromString(String val) {
    return ScreenType.values.firstWhere((e) => e.name == val);
  }
}

extension StringCapitalizeExtension on String {
  String toCapitalized() {
    if (isEmpty) {
      return this;
    }
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }
}
