import 'package:flutter/material.dart';

import 'Friendcard.dart';

class Friendlist extends StatelessWidget {
   const Friendlist({super.key});

 

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          children: [
            Friendcart(name: 'Marie Cris Alarilla' , imagedata: 'images/marikit.jpg',),
            Friendcart(name: 'Le Joshua Guzman', imagedata: 'images/juswa.jpg',),
            Friendcart(name: 'Raymond Mapayo', imagedata: 'images/raymond.jpg',),
          ],
        ),
        Row(
          children: [
            Friendcart(name: 'Johnley Engyo', imagedata: 'images/engyo.jpg',),
            Friendcart(name: 'Mary Iana Buisan', imagedata: 'images/maryyawa.jpg',),
            Friendcart(name: 'Edda Mae Osorno', imagedata: 'images/eda.jpg',),
          ],
        ),
      ],
    );
  }
}
