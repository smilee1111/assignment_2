import 'package:flutter/material.dart';

class Palindromescreen extends StatelessWidget {
  const Palindromescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Palindrome Number",
        style: TextStyle(fontSize: 20),),
        backgroundColor: const Color.fromARGB(255, 228, 130, 17),
        titleSpacing: 88,
      ),
      body: Padding(
        padding:EdgeInsets.all(30),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                label: Text("Enter the number"),
                hintText: "e.g: 499",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 15),
          SizedBox(
            width: 150,
            child: ElevatedButton(onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orangeAccent
            ), child: Text("Check",
            style: TextStyle(fontSize: 20))),
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