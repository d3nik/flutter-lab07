import 'package:flutter/material.dart';

class ColorProvider extends ChangeNotifier {
  int _red = 0;
  int _green = 0;
  int _blue = 0;

  int get red => _red;
  int get green => _green;
  int get blue => _blue;

  set red(int redValue) {
    _red = redValue;
    notifyListeners();
  }

  set blue(int blueValue) {
    _blue = blueValue;
    notifyListeners();
  }

  set green(int greenValue) {
    _green = greenValue;
    notifyListeners();
  }
}