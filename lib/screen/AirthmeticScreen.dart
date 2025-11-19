import 'dart:ffi';

import 'package:flutter/material.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  final TextEditingController firstController = TextEditingController();

  final TextEditingController secondController = TextEditingController();
  int result = 0;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
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
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                controller: firstController,
                decoration: InputDecoration(
                  labelText: "Enter first no:",
                  hintText: "e.g 2",
                  border:  OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.purple)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.red),
                  )
                ), validator: (value){
                  if(value==null || value.isEmpty){
                    return "Please enter first number.";
                  }
                  return null;
                  },
              ),
              SizedBox(height: 10,),
               TextFormField(
                keyboardType: TextInputType.number,
                controller:secondController,
                decoration: InputDecoration(
                  labelText: "Enter second no:",
                  hintText: "e.g",
                 border:  OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.purple)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.red),
                  )
                ),
                validator: (value){
                  if(value==null || value.isEmpty){
                    return "Please enter first number.";
                  }
                  return null;
                  },
              ),
              SizedBox(height: 10,),
              //button 
              SizedBox(
                width: 150,
                child: ElevatedButton(onPressed: () {
                  if(_formkey.currentState!.validate()){
                      int firstNo= int.parse(firstController.text);
                      int secondNo=int.parse(secondController.text);
                        setState(() {
                        result= firstNo+secondNo;
                    });
                    }
                }, 
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
                "Result is: $result",style: TextStyle(fontSize: 20),
              )
          
              
            ],
          ),
        ),
      )
    );
  }
}