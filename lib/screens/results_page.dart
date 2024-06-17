import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bmi/constants.dart';
import 'package:bmi/components/reusable_card.dart';
import 'package:bmi/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({required this.resultatIMC, required this.resultText, required this.interpretation});

  final String resultatIMC;
  final String resultText;
  final String interpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 05.50,
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Calculateur IMC',
            style: GoogleFonts.poppins(
                fontSize: 25, fontWeight: FontWeight.w500, letterSpacing: 1)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomCenter,
            child: Text(
              'Votre Résultat',
              style: kTitleStyle,
            ),
          )),
          Expanded(
            flex: 5,
            child: ReusableCard(
              couleur: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText.toUpperCase(),style: kResultTextStyle,),
                  Text(
                    resultatIMC,
                    style: kIMCTextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(interpretation,style: kBodyTextStyle,textAlign: TextAlign.center,),
                  )
                ],
              ),
            ),
          ),
          BottomButton(buttonTitle: 'Recalculer', onTap: (){
            Navigator.pop(context);
          })
        ],
      ),
    );
  }
}
