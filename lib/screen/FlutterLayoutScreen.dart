import 'package:flutter/material.dart';

class Flutterlayoutscreen extends StatelessWidget {
  const Flutterlayoutscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),
      ),
      body: 
      Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 2,
            )
          ),
          height: 100,
          child: Row(
            children: [
              Column(
                children: [
                  Icon(
                    Icons.call,
                    size:40
                  ),
                  Container(
                    child: Text("Call",
                    style: TextStyle(fontSize: 30,color: Colors.red),
                    )
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Icon(
                    Icons.navigation,
                    size: 40,
                  ),
                  Container(
                    child: Text("Route",
                    style: TextStyle(fontSize: 30,color: Colors.red),
                    )
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Icon(
                    Icons.share,
                    size:40,
                  ),
                  Container(
                    child: Text("Share",
                    style: TextStyle(fontSize: 30,color: Colors.red),
                    )
                  ),
                ],
              ),
              
            ],
          ),
        ),
      )
    );
  }
}