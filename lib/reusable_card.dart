 import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.couleur, this.cardChild,this.onPress});
  final Color couleur;
  final Widget? cardChild;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onPress,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: couleur, borderRadius: BorderRadius.circular(10.0)),
        child: cardChild,
      ),
    );
  }
}
