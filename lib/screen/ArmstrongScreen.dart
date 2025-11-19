import 'package:flutter/material.dart';
import 'dart:math';
class Armstrongscreen extends StatefulWidget {
  const Armstrongscreen({super.key});

  @override
  State<Armstrongscreen> createState() => _ArmstrongscreenState();
}

class _ArmstrongscreenState extends State<Armstrongscreen> {
  final TextEditingController numController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String result="";
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
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.number,
                controller: numController,
                decoration: InputDecoration(
                  label: Text("Enter the number"),
                  hintText: "e.g: 499",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 15),
            SizedBox(
              width: 150,
              child: ElevatedButton(onPressed: () {
                String original=numController.text;
                int num=int.parse(original);
                int sum=0;
                int temp=num;
                int digits=original.length;
                while(temp>0){
                  int remainder=temp%10;
                  sum+=pow(remainder,digits) as int;
                  temp=(temp/10).floor();  
                }

                setState(() {
                  if (sum == num) {
                    result = "$original is an Armstrong number";
                  } else {
                    result = "$original is not an Armstrong number";
                  }
                });
              },
               style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 102, 218, 106)
              ), child: Text("Check",
              style: TextStyle(fontSize: 20))),
            ),
              SizedBox(height: 10),
              Text(
                "Result is: $result ",style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
      )
    );
  }
}