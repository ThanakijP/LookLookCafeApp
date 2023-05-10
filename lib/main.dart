import 'package:flutter/material.dart';
import 'package:food_location_app/config/app_router.dart';
import 'package:food_location_app/screen/screen.dart';

import 'config/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cafe Location',
      theme: theme(),
      onGenerateRoute:  AppRouter.onGenerateRoute,
      initialRoute: HomeScreen.routeName,
    );
  }
}