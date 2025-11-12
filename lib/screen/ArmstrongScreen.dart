import 'package:flutter/material.dart';

class Armstrongscreen extends StatelessWidget {
  const Armstrongscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Armstrong Number",
        style: TextStyle(fontSize: 20),),
        backgroundColor: Colors.green,
        titleSpacing: 89,
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
              backgroundColor: const Color.fromARGB(255, 102, 218, 106)
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