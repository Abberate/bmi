import 'package:bmi/constants.dart';
import 'package:flutter/cupertino.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.buttonTitle, required this.onTap});
  final VoidCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(bottom: 20.0),
        decoration: const BoxDecoration(color: kBottomContainerColour),
        margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
            child: Text(
              buttonTitle,
              style: kLargeBTNTextStyle,
            )),
      ),
    );
  }
}