import 'package:assignment_2/screen/AirthmeticScreen.dart';
import 'package:assignment_2/screen/AreaCircleScreen.dart';
import 'package:assignment_2/screen/ArmstrongScreen.dart';
import 'package:assignment_2/screen/DashboardScreen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dashboardscreen()),
    );
  }
}