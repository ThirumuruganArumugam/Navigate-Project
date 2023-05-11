import 'package:mobx/mobx.dart';
import 'package:navigate/DisplayScreen/DisplayScreenModel.dart';
import 'package:navigate/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';


// Create a class named CalculationScreenVM wich extends the class CalculationScreenModel
class DisplayScreenVM extends DisplayScreenModel {
  // Create a constructor include the required parameter
  DisplayScreenVM({required int counter}) {
    // assign the value of counter
    this.counter = counter * 2;
  }

// Create a void function named as back
  void back() {
    // Add the navigator pop method to navigation stream.
    navigationStream.add(NavigatorPop());
  }
}
