import 'package:flutter/cupertino.dart';

class CounterDecrement extends ChangeNotifier{
  int count=0;
  void Decrement(){
    count--;
    notifyListeners();
  }
}