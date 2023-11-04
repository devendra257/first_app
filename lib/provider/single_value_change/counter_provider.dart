import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _count = 0;

// set countValue(){
//   _count = _count + value;
// }

// int get countValue{
//   return _count ;
// }

//* jab b set karenge to ek value aayega hi.. like int value..   value ko set karne ke liye liya gya h..
  set countValue(int value) {
    _count = _count + value;
    notifyListeners();

    //* count value yahi par change ho rahi h isliye notifyListerners use karte h
    //* notifyListerners ki value yahi par change hone ke liye use ki / Update karna b bol skte hai..
  }

//* get me hum kisi me value ki jarurt ni hoti h....  return karna jaruri h like int get... value to get karene ke liye  function bannya gya hai..
  int get countValue {
    return _count;
  }
}
