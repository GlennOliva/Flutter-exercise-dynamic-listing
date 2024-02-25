import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({super.key, required this.btnTxt, required this.icondata});

  final String btnTxt;
  final IconData icondata;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.grey,
                  ),
                  onPressed: () {},
                   icon: Icon(icondata),
                   label: Text(btnTxt),
                   );
  }
}