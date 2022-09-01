import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureDependencies() => $initGetIt(getIt);

@module
abstract class RegisterModule {
  @singleton
  AutoScrollController get scroller => AutoScrollController();
}
