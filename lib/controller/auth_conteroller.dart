

import 'package:flutter_application_john/const/const.dart';

class AuthController extends ChangeNotifier {
  bool _isChecked = false;

  bool get isChecked => _isChecked;

  void setChecked(bool newValue) {
    _isChecked = newValue;
   
    notifyListeners();
  }
}
