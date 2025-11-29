 import 'package:assignment_2/common/MySnackBar.dart';
import 'package:assignment_2/widgets/my_button.dart';
import 'package:assignment_2/widgets/my_textform_field.dart';
import 'package:flutter/material.dart';

class CustomLayoutScreen extends StatefulWidget {
  const CustomLayoutScreen({
    super.key,});

  
  @override
  State<CustomLayoutScreen> createState() => _CustomLayoutScreenState();
}

class _CustomLayoutScreenState extends State<CustomLayoutScreen> {
  final TextEditingController firstController = TextEditingController();
  final TextEditingController secondController = TextEditingController();
  int result = 0; 
  final _formkey = GlobalKey<FormState>();
  final _gap = SizedBox(height: 8);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Custom Layout Screen')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
            MyTextformField(
            controller: firstController,
            text: "Enter first number.", 
            hintText: "first number eg:2",
            errorMessage: "enter first number ",),
            _gap,
            MyTextformField(
            controller: secondController,
            text: "Enter second number.", 
            hintText: "second number eg:2",
            errorMessage: "enter second number ",),
            _gap,
             MyButton(
              text: "Addition", 
              onPressed: () {
              if(_formkey.currentState!.validate()){
              int firstNo= int.parse(firstController.text);
              int secondNo=int.parse(secondController.text);
              result=firstNo+secondNo;
              showMySnackBar(
              context: context, 
              message: "Result is: $result");
              }
              
             }),
             _gap,
            MyButton(text: "Subtraction", onPressed: () {
              if(_formkey.currentState!.validate()){
              int firstNo= int.parse(firstController.text);
              int secondNo=int.parse(secondController.text);
              result=firstNo-secondNo;showMySnackBar(
              context: context, 
              message: "Result is: $result");
              }
              
              },
              color: Colors.green,),
          
            ],
          
          ),
        ),
      ),
    );
  }
}