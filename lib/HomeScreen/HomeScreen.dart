import 'package:flutter/material.dart';
import 'package:navigate/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import 'package:navigate/Helpers/NavigationHelper/NavigationHelper.dart';

import 'HomeScreenVM.dart';


// Create a class named HomeScreen which extends the Statefulwidget
class HomeScreen extends StatefulWidget {
  // Create a constructor for the homescreen
  const HomeScreen({super.key});

// Create a override funtion for the create state function
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// Create a class named _HomeScreenState which extends the State<HomeScreen>
class _HomeScreenState extends State<HomeScreen> {
  // Creata an final instance for the class HomeScreenVM
  final HomeScreenVM _homeScreenVM = HomeScreenVM();

// Create an override function named initState
  @override
  void initState() {
    super.initState();
    // using the instance access the navigation stream and listen to the event
    _homeScreenVM.navigationStream.stream.listen((event) {
      // Check whether the condition event is equal to navigatorpush
      if (event is NavigatorPush) {
        // push the pageconfig,data of the event to the context
        context.push(pageConfig: event.pageConfig, data: event.data);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perform Calculation"),
      ),
      backgroundColor: const Color(0xff0D031B),
      body: Column(
        children: [Text(
          // Using the instance of the class call the data to be displayed and convert it to string
          _homeScreenVM.counter.toString(),
          // ignore: prefer_const_constructors
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'cousine',
            fontWeight: FontWeight.bold,
            fontSize: 64,
          ),
        ),
        FloatingActionButton.extended(
        onPressed:
            // Using the instance call the function navigate
            _homeScreenVM.navigate,
        label: const Text("Jump to next page"),
        icon: const Icon(Icons.arrow_forward_ios_outlined),
      ),
      FloatingActionButton.extended(
        onPressed:
            // Using the instance call the function navigate
            _homeScreenVM.start(),
        label: const Text("Jump to next page"),
        icon: const Icon(Icons.arrow_forward_ios_outlined),
      ),
      ]),
      
      
    );
  }
}
