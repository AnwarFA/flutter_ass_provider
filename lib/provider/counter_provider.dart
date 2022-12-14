// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_ass_provider/models/Counter.dart';

class CounterProvider extends ChangeNotifier {
  int _count = 0;

  int get countValue => _count;

  void add() {
    _count++;
    notifyListeners();
  }

//   void addCounter(String text) {
//     notifyListeners();
//   }
// }

  void addCounter(String Counter) {
    CounterModel model = CounterModel(
      text: Counter,
    );
  }
}
