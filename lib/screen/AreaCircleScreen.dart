import 'package:flutter/material.dart';

class Areacirclescreen extends StatelessWidget {
  const Areacirclescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Area of Circle"),
        backgroundColor: Colors.yellow,
        titleSpacing: 130,
      ),
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Column(
          children: [
            TextField(  
                decoration: InputDecoration(
                  labelText: "Enter the radius of the circle.",
                  hintText: "eg: 7",
                  border: OutlineInputBorder(),
                ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              width: 190,
              child: ElevatedButton(onPressed: () {}, child: Text("Calulate Area.",
              style: TextStyle(fontSize: 20))),
            ),
            SizedBox(height: 10)
        
          ],
        ),
      )
    );
  }
}