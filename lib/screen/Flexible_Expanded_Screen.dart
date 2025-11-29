import 'package:assignment_2/common/MySnackBar.dart';
import 'package:flutter/material.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () => 
             showMySnackBar(
              context: context,
              color: Colors.red,
              message: "I am container one"),
              child: Container(
                width: double.infinity,
                color: Colors.yellow,
                child: Text("Container1"),
                alignment: Alignment.center,
              ),
            ),
          ),
          
          Expanded(
            flex: 2,
            child: GestureDetector(
              onDoubleTap: () => 
              showMySnackBar(
                context: context,
                message: "I am container two"),
              child: Container(
                color: Colors.green,
                width: double.infinity,
                child: Text("Container2"),
                alignment: Alignment.center,
                
              ),
            ),
          )
        ],
      )
    );
  }
}