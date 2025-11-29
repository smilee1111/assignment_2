import 'package:flutter/material.dart';

class Imagescreen extends StatelessWidget {
  const Imagescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: 
      SingleChildScrollView(
        child: Column(
          children: [
          Image.network('https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg'),
          Image.asset('assets/images/cat.jpg'),
          Image.asset('assets/images/cattwo.jpg'),
          Image.network('https://images.pexels.com/photos/57416/cat-sweet-kitty-animals-57416.jpeg'),
          Image.network('https://images.pexels.com/photos/2071873/pexels-photo-2071873.jpeg'),
          Image.network('https://images.pexels.com/photos/2558605/pexels-photo-2558605.jpeg'),
          Image.network('https://images.pexels.com/photos/1485968/pexels-photo-1485968.jpeg'),
          Image.network('https://images.pexels.com/photos/1543801/pexels-photo-1543801.jpeg'),
          Image.network('https://images.pexels.com/photos/1424687/pexels-photo-1424687.jpeg')
        ],),
      )
       
    );
  }
}