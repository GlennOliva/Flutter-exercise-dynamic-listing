import 'package:flutter/material.dart';
import 'package:flutter_prac2/controller/Buttons.dart';

class Friendpost extends StatelessWidget {
  const Friendpost({super.key, required this.Userimage, required this.Timepost, required this.desc, required this.Postimage, required this.Username, required this.comment, required this.shares});

  final String Userimage;
  final String Username;
  final String Timepost;
  final String desc;
  final String Postimage;
  final String comment;
  final String shares;

  final txtstyleheader2 = const TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.bold,
);

  @override
  Widget build(BuildContext context) {
    return 
            Column(
              children: [
                 Row(
                  children: [
                    const SizedBox(width: 7,),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(Userimage),
                      ),
                    ),
                     const SizedBox(width: 10,),
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(Username , style: txtstyleheader2,),
                          Row(
                            children: [
                              Text(Timepost , style: txtstyleheader2,),
                              const Icon(Icons.person_2_sharp , size: 20,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child:  Row(
                    children: [
                      Text(desc, style: const TextStyle(fontSize: 16),),
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                Image.asset(Postimage , width: 500, height: 400,),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(comment),
                      SizedBox(width: 5,),
                      Text(shares)
                    ],
                  ),
                ),
                const Divider(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ButtonsPage(btnTxt: 'Like', icondata: Icons.thumb_up),
                    ButtonsPage(btnTxt: 'Comment', icondata: Icons.comment),
                    ButtonsPage(btnTxt: 'Share', icondata: Icons.share),
                  ],
                ),
                SizedBox(
                  child: Container(
                    color: Colors.grey,
                  ),
                  height: 4,
                )
              ],
            );
  }
}