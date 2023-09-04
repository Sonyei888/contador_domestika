
import 'package:flutter/foundation.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void incrementar() {
    if (_counter < 10) {
      _counter++;
      notifyListeners();
    }
  }

  void decrementar() {
    if (_counter > 0) {
      _counter--;
      notifyListeners();
    }
  }
}
