import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';
import 'package:navigate/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';

part 'DisplayScreenModel.g.dart';

// ignore: library_private_types_in_public_api
// Create a model class named CalculationScreenModel
class DisplayScreenModel = _DisplayScreenModelBase
    with _$DisplayScreenModel, NavigationMixin;

abstract class _DisplayScreenModelBase with Store {
  // Create an observable variable
  @observable
// Declare the variable named counter of type integer and assign value 0.
  int counter = 0;

// Create a setter function for the variable
  void setcounter({required int counter}) => this.counter = counter;
}
