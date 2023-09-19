import 'package:flutter/cupertino.dart';

class CounterIncrement extends ChangeNotifier{
  int count=0;
  void Increment(){
    count++;
    notifyListeners();
  }
}