class Person {
  String name;
  double weight;
  double height;

  Person({required this.name, required this.height, required this.weight});

  double calcIMC() {
    double imcValue = weight / (height * height);
    return double.parse(imcValue.toStringAsFixed(2));
  }

  String get imcValue {
    switch (calcIMC()) {
      case <= 18.5:
        return 'Abaixo do peso';
      case >= 18.6 && <= 24.9:
        return 'Peso ideal';
      case >= 25.0 && <= 29.9:
        return 'Levemente acima do peso';
      case >= 30.0 && <= 34.9:
        return 'Obesidade grau 1';
      case >= 35.0 && <= 39.9:
        return 'Obesidade grau 2 (Severa)';
      case >= 40:
        return 'Obesidade grau 3 (Mórbida)';
    }
    return 'Não foi possível calcular!';
  }
}
