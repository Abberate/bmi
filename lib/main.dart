import 'package:bmi/screens/input_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const BMICalculator());
   SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Colors.pinkAccent, foregroundColor: Colors.white),
        primaryColor: const Color(0xff090E21),
        scaffoldBackgroundColor: const Color(0xff090E21),
      ),
      home: const InputPage(),
    );
  }
}
