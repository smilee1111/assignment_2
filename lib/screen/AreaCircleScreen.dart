import 'package:flutter/material.dart';

class Areacirclescreen extends StatefulWidget {
  const Areacirclescreen({super.key});

  @override
  State<Areacirclescreen> createState() => _AreacirclescreenState();
}

class _AreacirclescreenState extends State<Areacirclescreen> {
  final TextEditingController radController=TextEditingController();
  
  double result=0;
  final GlobalKey<FormState> _formkey =GlobalKey<FormState>();
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
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(  
                keyboardType: TextInputType.number,
                controller:radController,
                  decoration: InputDecoration(
                    labelText: "Enter the radius of the circle.",
                    hintText: "eg: 7",
                    border: OutlineInputBorder(),
                  ),validator: (value){
                  if(value==null || value.isEmpty ){
                    return "Please enter first number.";
                  }
                  return null;
                },
              ),
              SizedBox(height: 10,),
              SizedBox(
                width: 190,
                child: ElevatedButton(onPressed: () {
                   if(_formkey.currentState!.validate()){
                    int radius= int.parse(radController.text);
                      setState(() {
                      result= 3.14*radius*radius;
                  });
                  }
                },
                 style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(248, 234, 109, 1)
              ), child: Text("Calulate Area",
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