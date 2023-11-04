import 'package:flutter/material.dart';

class ListProvider extends ChangeNotifier {
  List<Map<String, dynamic>> _mData = [];

  List<Map<String, dynamic>> getMyListData() {
    //* jab b ye call hoga to mData ko to ye Notifier to call hoga to wo new values ko leke aayega..
    return _mData;
  }

  //!Action(Event)

  addData(Map<String, dynamic> newData) {
    //*   ye Add function call kar rahe h or jaise hi change hoga data me to notifylisterners ko call kiye hai.
    _mData.add(newData);
    notifyListeners();
  }

  updateData(Map<String, dynamic> dataToBeUpdated, int index) {
    _mData[index] = dataToBeUpdated;
    notifyListeners();
  }

  removeData(int index) {
    _mData.removeAt(index);
    notifyListeners();
  }

  // //* condition match hogi to delete hoga ni to agar isme ek nam ke bhut log h to pura delete kar dega islisye upar wala use kar rahe hai..
  // removeDataMap(Map<String, dynamic> dataBeToDeleted) {
  //   //* remove where hamesh condition maganta h
  //   _mData.removeWhere((element) => element == dataBeToDeleted);
  // }
}
