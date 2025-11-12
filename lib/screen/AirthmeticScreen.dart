import 'dart:ffi';

import 'package:flutter/material.dart';

class AirthmeticScreen extends StatelessWidget {
  const AirthmeticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Airthmetic Screen"),
        backgroundColor: Colors.blue,
        titleSpacing:110,
      ),
      body:Padding(padding: 
      EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Enter first no:",
                hintText: "e.g 2",
                border:  OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
             TextField(
              decoration: InputDecoration(
                labelText: "Enter second no:",
                hintText: "e.g",
                border:  OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            //button 
            SizedBox(
              width: 150,
              child: ElevatedButton(onPressed: () {}, child: Text(
                "SUM", style: TextStyle(
                  fontSize: 20),
                ),
              ),
          
            ),
            SizedBox(height: 10),
            Text(
              "Result is: ",style: TextStyle(fontSize: 20),
            )

            
          ],
        ),
      )
    );
  }
}