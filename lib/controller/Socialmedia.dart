import 'package:flutter/material.dart';
import 'package:flutter_prac2/controller/Friendpost.dart';
import 'package:flutter_prac2/controller/Friendslist.dart';

class SocialMediaPage extends StatelessWidget {
   SocialMediaPage({super.key});


final txtstyleheader = const TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
);

final txtstyleheader2 = const TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
);

final txtstyleheader3 = const TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.bold,
);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Social Media Clone'),
      ),
      body:   ListView(
        children:  [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10,),
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('images/nerdyglenn.png'),
                ),
                const SizedBox(height: 10,),
                Text('Glenn Angelo Oliva', style: txtstyleheader,),
                Text('g.oiva.523349@umindanao.edu.ph', style: txtstyleheader),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('FOLLOWERS' , style: txtstyleheader2),
                     Text('POSTS' , style: txtstyleheader2),
                      Text('FOLLOWING' , style: txtstyleheader2),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('100K' , style: txtstyleheader3 ),
                     Text('100', style: txtstyleheader3),
                      Text('50', style: txtstyleheader3),
                  ],
                ),
                const SizedBox(height: 15,),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 17),
                  child: Row(
                    children: [
                      Text('Friends', style: txtstyleheader2),
                    ],
                  ),
                ),
                const Friendlist(),
                const SizedBox(height: 15,),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 17),
                  child: Row(
                    
                    children: [
                      Text('Post' , style: txtstyleheader2),
                    ],
                  ),
                ),
                const SizedBox(height: 15,),
                const Friendpost(Userimage: 'images/marikit.jpg', Timepost: '5 min', desc: 'Wow i like this iphone 14 pro max! ', Postimage: 'images/iphone14.png', Username: 'Marie Cris Alarilla' , comment: '5 comment', shares: '3 share'),
                const Friendpost(Userimage: 'images/juls.jpg', Timepost: '3 min', desc: 'HAHAHAA wuy double meaning! ', Postimage: 'images/meme1.jpg', Username: 'Juliana Mausisa', comment: '2 comment', shares: '4 share'),
                const Friendpost(Userimage: 'images/juswa.jpg', Timepost: '1 min', desc: 'Okay ra ma kapoy nakos IT shet! ', Postimage: 'images/meme2.jpg', Username: 'Le Joshua Guzman' , comment: '3 comment', shares: '2 share'),
                const Friendpost(Userimage: 'images/engyo.jpg', Timepost: '1 hr', desc: 'Ay ambot rajud malalaman ', Postimage: 'images/meme3.jpg', Username: 'Johnley Engyo', comment: '0 comment', shares: '2 share'),
                const Friendpost(Userimage: 'images/nerdyglenn.png', Timepost: '2 min', desc: 'AHHAHAAH sa true ', Postimage: 'images/meme4.jpg', Username: 'Me' , comment: '5 comment', shares: '6 share'),
                const Friendpost(Userimage: 'images/eda.jpg', Timepost: '1 hrs ago', desc: ':)', Postimage: 'images/meme8.jpg', Username: 'Edda Mae Osorno', comment: '6 comment', shares: '3 share'),
                const Friendpost(Userimage: 'images/mary.jpg', Timepost: '2 hrs ago', desc: 'Post ta daan kay apiki! ', Postimage: 'images/meme5.jpg', Username: 'Mary Iana Buisan', comment: '3 comment', shares: '1 share'),
                const Friendpost(Userimage: 'images/raymond.jpg', Timepost: '2 min', desc: 'Magpatuli pa diay? ', Postimage: 'images/meme6.jpg', Username: 'Raymond Mapayo' , comment: '1 comment', shares: '2 share'),
                const Friendpost(Userimage: 'images/hanz.png', Timepost: '8 min', desc: 'Hays nako! ', Postimage: 'images/meme7.jpg', Username: 'Hanz Daryl Quezada', comment: '2 comment', shares: '1 share'),
                const Friendpost(Userimage: 'images/aj.jpg', Timepost: '2 min', desc: 'Hays I miss my crush :( ', Postimage: 'images/meme9.jpg', Username: 'Aj Calcena' , comment: '10 comment', shares: '8 share'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}