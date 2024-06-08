import 'package:bmi/input_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.pinkAccent,foregroundColor: Colors.white ),
        primaryColor: Color(0xff090E21),
        scaffoldBackgroundColor: Color(0xff090E21),
      ),
      home: const InputPage(),
    );
  }
}

