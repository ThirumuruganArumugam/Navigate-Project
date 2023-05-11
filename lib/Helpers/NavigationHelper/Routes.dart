// ignore_for_file: constant_identifier_names, unused_import

import 'package:navigate/DisplayScreen/DisplayScreen.dart';

import '../../HomeScreen/HomeScreen.dart';
import 'NavigationHelper.dart';

// ignore_for_file: constant_identifier_names, unused_import


// Create an enum class and assign the value
enum Routes { HomeScreen, DisplayScreen }

// Create a class named Pages
class Pages {
  Object? data;
  // Create an instance for the class Pageconfig named as HomeScreenConfig
  static final PageConfig HomeScreenConfig =
      PageConfig(route: Routes.HomeScreen, build: (_) => const HomeScreen());

  // Create an instance for the class Pageconfig named as CalculationScreenConfig
  static final PageConfig DisplayScreenConfig = PageConfig(
    route: Routes.DisplayScreen,
    build: (_) => DisplayScreen(data: DisplayScreenConfig.data),
  );
}
