import 'package:assignment_2/app.dart';
import 'package:assignment_2/screen/AirthmeticScreen.dart';
import 'package:assignment_2/screen/AreaCircleScreen.dart';
import 'package:assignment_2/screen/ArmstrongScreen.dart';
import 'package:assignment_2/screen/PalindromeScreen.dart';
import 'package:flutter/material.dart';

class Dashboardscreen extends StatelessWidget {
  const Dashboardscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: Colors.lightBlue,
        titleSpacing: 150,
      ),
        body: Padding(
          padding: EdgeInsets.all(100),
          child: Column(
            children: [
              SizedBox(
                width:300,
                height:150,
                child: ElevatedButton(onPressed: () {
                   Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => const ArithmeticScreen(),
                ),
              );
                }, style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(240, 213, 245, 1)
            ), child: Text("Arithmetics",
                style: TextStyle(fontSize: 20),
                ),
              )),
              SizedBox(height: 10),
              SizedBox(
                width:300,
                height:150,
                child: ElevatedButton(onPressed: () {
                   Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => const Areacirclescreen(),
                ),
              );
                }, style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 230, 209, 26)
            ), child: Text("Area of Cirlce",
                style: TextStyle(fontSize: 20),))
              ),
              SizedBox(height: 10),
              SizedBox(
                width:300,
                height:150,
                child: ElevatedButton(onPressed: () {
                   Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => const Armstrongscreen(),
                ),
              );
                }, style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green
            ), child: Text("Armstrong Number",
                style: TextStyle(fontSize: 20))),
              ),
              SizedBox(height: 10),
              SizedBox(
                width:300,
                height:150,
                child: ElevatedButton(onPressed: () {
                   Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => const Palindromescreen(),
                ),
              );
                }, style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orangeAccent
            ), child: Text("Palindrome Number",
                style: TextStyle(fontSize: 19)),
                
              ))
            ],
          ),
        )
    );
  }
}