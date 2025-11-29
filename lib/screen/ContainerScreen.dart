import 'package:flutter/material.dart';

class Containerscreen extends StatelessWidget {
  const Containerscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Screen"),
      ),
      body: SafeArea(
        child: Container(
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.centerRight,
            child: Text("Hello"), 
            // decoration: BoxDecoration(
            //   shape: BoxShape.circle,
            //   color: Colors.yellow,
            //   border: Border.all(
            //   color: Colors.black,
            //   width: 2,
            //   )
            // )
            
            )),
      );
  }
}