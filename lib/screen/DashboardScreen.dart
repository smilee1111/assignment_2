import 'package:assignment_2/app.dart';
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
        body: Column(
          children: [
            SizedBox(
              width:220,
              child: ElevatedButton(onPressed: () {}, child: Text("Airthmetic Screen",
              style: TextStyle(fontSize: 20),
              ),
            )),
            SizedBox(height: 10),
            SizedBox(
              width: 200,
              child: ElevatedButton(onPressed: () {}, child: Text("Area of Cirlce",
              style: TextStyle(fontSize: 20),))
            ),
            SizedBox(height: 10),
            SizedBox(
              width:200,
              child: ElevatedButton(onPressed: () {}, child: Text("Armstrong Number",
              style: TextStyle(fontSize: 20))),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 200,
              child: ElevatedButton(onPressed: () {}, child: Text("Palindrome Number",
              style: TextStyle(fontSize: 20)),
            ))
          ],
        )
    );
  }
}