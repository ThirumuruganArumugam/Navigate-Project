import 'package:mobx/mobx.dart';
import 'package:navigate/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import 'package:navigate/Helpers/NavigationHelper/Routes.dart';

import 'HomeScreenModel.dart';

// Create a class named HomeScreenVM which extends the class HomeScreenModel
class HomeScreenVM extends HomeScreenModel {
// Declare a method named navigate
  

  start(){
    int counter = 0;
    void _incrementCounter() {
    counter++;
  }}

  void navigate() {
    // Add the navigatorpush to navigationstream with the calculationscreen and data as counter
    navigationStream.add(
        NavigatorPush(pageConfig: Pages.DisplayScreenConfig, data: counter));
  }
}
