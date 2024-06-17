import 'package:flutter/material.dart';
import 'package:bmi/constants.dart';



class IconContent extends StatelessWidget {
  IconContent({required this.icon, required this.texte});
  final IconData icon;
  final String texte;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,size: 80.0,),
        const SizedBox(height: 15),
        Text(
          texte,
          style: kTextStyle,
        )
      ],
    );
  }
}