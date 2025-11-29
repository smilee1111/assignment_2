import 'package:flutter/material.dart';

class MyTextformField extends StatelessWidget {
  const MyTextformField({super.key,
  required this.controller,
  required this.text,
  required this.hintText,
  required this.errorMessage,
  this.textInputType
  });
  
  final TextEditingController controller;
  final String text;
  final String hintText;
  final String errorMessage;
  final TextInputType ? textInputType ;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
        keyboardType: textInputType ?? TextInputType.number,
            decoration: InputDecoration(
              label: Text(text,),
              hintText:hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10)
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.black)
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.blue)
              ),
            ),
            validator: (value){
              if(value ==  null || value.isEmpty){
                return errorMessage;
              }
              return null;
            },
          );
  }
}