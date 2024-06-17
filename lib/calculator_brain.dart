import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.taille, required this.poids}) {
    _calculateIMC();
  }

  final int taille;
  final int poids;
  late double _imc;

  void _calculateIMC() {
    _imc = poids / pow(taille / 100, 2);
  }

  String calculateIMC() {
    return _imc.toStringAsFixed(1);
  }

  String getResult() {
    if (_imc >= 25) {
      return 'En surpoids';
    } else if (_imc > 18.5) {
      return 'Normal';
    } else {
      return 'Maigre';
    }
  }

  String getInterpretation() {
    if (_imc >= 25) {
      return "Vous avez un poids corporel supérieur à la normale. Essayez de faire plus d'exercices.";
    } else if (_imc > 18.5) {
      return "Vous avez un poids normal. Bon travail !";
    } else {
      return "Vous avez un poids corporel inférieur à la normale. Vous pouvez manger un peu plus.";
    }
  }
}
