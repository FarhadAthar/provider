

import 'package:flutter/material.dart';

class Student extends ChangeNotifier {
  String _name;
  int _rollNo;
  double _fee;
  Student({
    required name,
    required rollNo,
    required fee,
  }): _name = name, _rollNo = rollNo, _fee = fee;

  int get rollNo => _rollNo;
  double get fee => _fee;
  String get name => _name;

  set rollNo(int value) {
    _rollNo = value;
    notifyListeners();
  }

  set fee(double value) {
    _fee = value;
    notifyListeners();
  }

  set name(String value) {
    _name = value;
    notifyListeners();
  }

}
