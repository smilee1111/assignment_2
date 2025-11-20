import 'package:flutter/material.dart';

class ArithmeticScreen2 extends StatefulWidget {
  const ArithmeticScreen2({super.key});

  @override
  State<ArithmeticScreen2> createState() => _ArithmeticScreen2State();
}

class _ArithmeticScreen2State extends State<ArithmeticScreen2> {
  String? group = "myGroup";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text("Arithmetic"),
  titleSpacing: 150,
  ),
  body: Container(
    color: const Color.fromARGB(255, 221, 206, 161),
    child: Padding(
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              label: Text("enter first number."),
              hintText: "First Number.",
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
          ),
          SizedBox(height: 8),
             TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              label: Text("enter second number."),
              hintText: "Second Number.",
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
          ),
          SizedBox(height: 10,),
           ListTile(
                title: const Text("Add"),
                leading: Radio(
                  value: "Add",
                  groupValue: group,
                  onChanged: (String? value) {
                    setState(() {
                      group = value;
                    });
                  },
                ),
              ),
                ListTile(
                title: const Text("Subtract"),
                leading: Radio(
                  value: "Subtract",

                  groupValue: group,
                  onChanged: (String? value) {
                    setState(() {
                      group = value;
                    });
                  },
                ),
              ),
                ListTile(
                title: const Text("Multiply"),
                leading: Radio(
                  value: "Add",

                  groupValue: group,
                  onChanged: (String? value) {
                    setState(() {
                      group = value;
                    });
                  },
                ),
              ),
                ListTile(
                title: const Text("Divide"),
                leading: Radio(
                  value: "Add",

                  groupValue: group,
                  onChanged: (String? value) {
                    setState(() {
                      group = value;
                    });
                  },
                ),
              ),
              
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: () {}, child: 
            Text('Calculate')),
          )
        ],
      ),
    ),
  ) ,
    );
  }
}