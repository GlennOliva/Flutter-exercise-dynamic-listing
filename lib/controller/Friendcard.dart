import 'package:flutter/material.dart';

class Friendcart extends StatelessWidget {
   Friendcart({super.key, required this.name, required this.imagedata});

  final String name;
  final String imagedata;

   final txtstyleheader2 = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.bold,
);

  @override
  Widget build(BuildContext context) {
    return  Card(
              child: Column(
                children: [
                  Image.asset(imagedata,
                  width: 120,
                  height: 120,),
                  SizedBox(height: 15,),
                   Text(name , style: txtstyleheader2,),
                   SizedBox(height: 10,),
                ],
                
              ),
              
            );
            
  }
}