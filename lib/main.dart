import 'package:flutter/material.dart';
import 'package:mypcot_infotech/core/constants/appcolor.dart';
import 'package:mypcot_infotech/view/screens/home_screen.dart';
import 'package:mypcot_infotech/view/widgets/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Appcolor.primaryColor,
        appBarTheme: AppBarTheme(
          backgroundColor: Appcolor.primaryColor
        ),
      fontFamily: 'Roboto',
      useMaterial3: true,
      textTheme: const TextTheme(
        bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Appcolor.primaryFont),
        bodyMedium: TextStyle(fontSize: 16, color: Appcolor.primaryFont),
        titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Appcolor.primaryFont),

      ),
      

      ),
      home: CustomBottomNavBar(),
    );
  }
}