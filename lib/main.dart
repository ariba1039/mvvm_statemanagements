import 'package:flutter/material.dart';
import 'package:mvvm_statemanagements/constants/theme_data.dart';
import 'package:mvvm_statemanagements/screens/favorites_screen.dart';
import 'package:mvvm_statemanagements/screens/movies_detail_screen.dart';
import 'package:mvvm_statemanagements/screens/movies_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movies App',
      theme:CustomThemeData.lightTheme,
      home: MovieDetailsScreen(),
    );
  }
}
