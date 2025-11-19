import 'package:flutter/material.dart';

class RichTextScreen extends StatelessWidget {
  const RichTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Rich text"), 
      titleSpacing: 161,
      backgroundColor: Colors.amber,
       ), 
       body: Column(
        children: [
          Container(
          color: Colors.blueAccent,
          width: double.infinity,
          child: Text("Hello World!", 
          style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.brown,),
          )),
          SizedBox(height: 10,),
          Container(
          color: Colors.pinkAccent,
          width: double.infinity,
          child: Text("My name is Muskan Kc", 
          style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
          color: Colors.brown,),
          )),
          SizedBox(height:10),
          Container(
            color: const Color.fromARGB(255, 41, 44, 46),
            width: double.infinity,
            child: RichText(text: const TextSpan(
              text: "H",
              style: TextStyle(
              color: Colors.red,
              fontSize: 40,
              ),
              children: <TextSpan>[
                TextSpan(
                  text:'ello',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 30,
                  )
                ),
                TextSpan(
                  text:' bold',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  )
                ),
                TextSpan(
                  text: ' world!',
                  style: TextStyle(
                    color: Colors.red,
                  )
                )
              ]
            )),
          )
        ]
       ),
        
        
       );
  }
}