import 'package:assignment_2/screen/Airthmetic.dart';
import 'package:assignment_2/screen/AirthmeticScreen.dart';
import 'package:assignment_2/screen/AreaCircleScreen.dart';
import 'package:assignment_2/screen/ArithmeticScreen2.dart';
import 'package:assignment_2/screen/ArmstrongScreen.dart';
import 'package:assignment_2/screen/ColumnScreen.dart';
import 'package:assignment_2/screen/ContainerScreen.dart';
import 'package:assignment_2/screen/CustomLayoutScreen.dart';
import 'package:assignment_2/screen/DashboardScreen.dart';
import 'package:assignment_2/screen/Flexible_Expanded_Screen.dart';
import 'package:assignment_2/screen/FlutterLayoutScreen.dart';
import 'package:assignment_2/screen/ImageScreen.dart';
import 'package:assignment_2/screen/RichTextScreen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CustomLayoutScreen()
    );
  }
}