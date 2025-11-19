import 'package:flutter/material.dart';

class Palindromescreen extends StatefulWidget {
  const Palindromescreen({super.key});

  @override
  State<Palindromescreen> createState() => _PalindromescreenState();
}

class _PalindromescreenState extends State<Palindromescreen> {
  final TextEditingController numController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String result="";
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
        child: Form(
          child: Column(
            key:_formkey,
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                controller: numController,
                decoration: InputDecoration(
                  label: Text("Enter the number"),
                  hintText: "e.g: 499",
                  border: OutlineInputBorder()
                ),
                validator: (value){
                  if(value==null || value.isEmpty){
                    return "Please enter the number";
                  }
                  return null;
                }   ,
              ),
              SizedBox(height: 15),
            SizedBox(
              width: 150,
              child: ElevatedButton(onPressed: () {
                String original = numController.text;
                String reversed = original.split('').reversed.join('');
                setState(() {
                  if(original==reversed){
                    result="$original is a Palindrome number";
                  }else{
                    result="$original is not a Palindrome number";
                  }
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent
              ), child: Text("Check",
              style: TextStyle(fontSize: 20))),
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