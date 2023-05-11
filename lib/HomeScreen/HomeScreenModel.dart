import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';
import 'package:navigate/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
part 'HomeScreenModel.g.dart';

// ignore: library_private_types_in_public_api

// Create a model class named HomeScreenModel
class HomeScreenModel = _HomeScreenModelBase
    with _$HomeScreenModel, NavigationMixin;

abstract class _HomeScreenModelBase with Store {
// Create an observable variable
  @observable
// Declare the variable named counter of type integer and assign value 101.
  int counter = 0;

// Create a setter function for the variable.
  void setcounter({required int counter}) => this.counter = counter;
}
