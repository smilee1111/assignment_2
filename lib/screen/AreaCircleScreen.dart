import 'package:flutter/material.dart';

class Areacirclescreen extends StatelessWidget {
  const Areacirclescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Area of Circle",
        style: TextStyle(fontSize: 20),),
        backgroundColor: Colors.yellow,
        titleSpacing: 100,
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
              child: ElevatedButton(onPressed: () {},
               style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(248, 234, 109, 1)
            ), child: Text("Calulate Area",
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