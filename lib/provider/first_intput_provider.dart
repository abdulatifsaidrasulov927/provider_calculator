import 'package:flutter/material.dart';

class CalculatoProvider with ChangeNotifier {
  CalculatoProvider();

  String firstInput() {
    notifyListeners();

    return '';
  }

  dynamic one() {
    notifyListeners();

    return 1;
  }

  dynamic two() {
    notifyListeners();
    return 2;
  }

  dynamic three() {
    notifyListeners();
    return 3;
  }

  dynamic plus() {
    notifyListeners();
    return '+';
  }

  dynamic minuse() {
    notifyListeners();
    return '-';
  }

  dynamic kopayturuv() {
    notifyListeners();
    return '*';
  }

  dynamic boluv() {
    notifyListeners();
    return '%';
  }

  dynamic four() {
    notifyListeners();
    return 4;
  }

  dynamic five() {
    notifyListeners();
    return 5;
  }

  dynamic six() {
    notifyListeners();
    return 6;
  }

  dynamic seven() {
    notifyListeners();
    return 7;
  }

  dynamic eithg() {
    notifyListeners();
    return 8;
  }

  dynamic nine() {
    notifyListeners();
    return 9;
  }

  dynamic zero() {
    notifyListeners();
    return 0;
  }

  String clear() {
    notifyListeners();
    return '';
  }

  dynamic clearint() {
    notifyListeners();
    return 0;
  }

  String equal(int a, int b, String amal) {
    notifyListeners();
    switch (amal) {
      case '+':
        return (a + b).toString();
      case '-':
        return (a - b).toString();
      case '%':
        return (a % b).toString();
      case '*':
        return (a * b).toString();
    }
    return '';
  }

  // ignore: non_constant_identifier_names
  List<bool> InputChoos(bool firstInputTap, bool sekodInputTap) {
    if (firstInputTap) {
      firstInputTap = false;
      sekodInputTap = true;
      notifyListeners();
      return [firstInputTap, sekodInputTap];
    } else {
      firstInputTap = true;
      sekodInputTap = false;
      notifyListeners();
      return [firstInputTap, sekodInputTap];
    }
  }
}
