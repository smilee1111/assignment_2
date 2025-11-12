import 'dart:ffi';

import 'package:flutter/material.dart';

class ArithmeticScreen extends StatelessWidget {
  const ArithmeticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Arithmetic Screen",
        style: TextStyle(fontSize: 20),),
        backgroundColor: const Color.fromARGB(255, 207, 144, 231),
        titleSpacing:90,
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
              child: ElevatedButton(onPressed: () {}, 
               style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(213, 158, 224, 1)
            ),child: Text(
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