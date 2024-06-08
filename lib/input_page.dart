import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bmi/reusable_card.dart';
import 'package:bmi/icon_content.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender? selectedGender;

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
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      couleur: selectedGender == Gender.male ? activeCardColour : inactiveCardColor,
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.mars, texte: 'Homme'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      child: ReusableCard(
                          couleur: selectedGender == Gender.female ? activeCardColour :inactiveCardColor,
                          cardChild: IconContent(
                              icon: FontAwesomeIcons.venus, texte: 'Femme'))),
                ),
              ],
            ),
          ),
          Expanded(child: ReusableCard(couleur: activeCardColour)),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(couleur: activeCardColour),
                ),
                Expanded(
                  child: ReusableCard(couleur: activeCardColour),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(color: bottomContainerColour),
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
