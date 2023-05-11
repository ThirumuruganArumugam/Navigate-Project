import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:navigate/DisplayScreen/DisplayScreenVM.dart';
import 'package:navigate/Helpers/NavigationHelper/NavigationHelper.dart';

import '../Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
// Create a class named CalculationScreen which extends the Statefulwidget
class DisplayScreen extends StatefulWidget {
  // Create a constructor for the homescreen
  const DisplayScreen({super.key, required this.data});
  // Declare a variable named data of type integer and make it final
  final int data;

// Create a override funtion for the create state function
  @override
  State<DisplayScreen> createState() => _DisplayScreenState();
}

// Create a class named _CalculationScreenState which extends the State<CalculationScreen>
class _DisplayScreenState extends State<DisplayScreen> {
  // Creata an final instance for the class CalculationScreenVM assign the parameter counter and make it late final
  late final DisplayScreenVM _displayScreenVM = DisplayScreenVM(counter: widget.data);

// Create an override function named initState
  @override
  void initState() {
    super.initState();
    // using the instance access the navigation stream and listen to the event
    _displayScreenVM.navigationStream.stream.listen((event) {
      // Check whether the condition event is equal to Navigatorpop
      if (event is NavigatorPop) {
        // pop the context
        context.pop();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Performed Calculation"),
      ),
      backgroundColor: const Color(0xff0D031B),
      body: Center(
        child: Observer(builder: (context) {
          return Text(
            // Using the instance of the class call the data to be displayed and convert it to string
            _displayScreenVM.counter.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'cousine',
              fontWeight: FontWeight.bold,
              fontSize: 64,
            ),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed:
            // Using the instance call the function back
            _displayScreenVM.back,
        label: const Text("get back to previous page"),
        icon: const Icon(Icons.arrow_back_ios_outlined),
      ),
    );
  }
}
