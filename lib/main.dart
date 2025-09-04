import 'package:flutter/material.dart';
import 'package:navigate_route/screens/detail_s.dart';
import 'package:navigate_route/screens/home_s.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routes: {
        HomeScreen.routeName : (context) => HomeScreen(),
        DetailScreen.routeName : (context) => DetailScreen(),
      },
    );
  }
}