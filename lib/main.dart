import 'package:flutter/material.dart';
import 'Helpers/NavigationHelper/NavigationHelper.dart';
import 'Helpers/NavigationHelper/Routes.dart';

// Create a class named Myapp whihc extends the StatelessWidget
class MyApp extends StatelessWidget {
  // Create a constructor named Myapp
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute:
          AppRoute(initialPage: Pages.HomeScreenConfig, initialPageData: null)
              .onGenerateRoute,
    );
  }
}