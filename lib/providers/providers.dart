import 'package:flutter/material.dart';
import 'package:maxximum_digital/utils/constant.dart';

class AppProviders extends ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  String _isLoading = kLoadNothing;
  String get isLoading => _isLoading;
  set isLoading(String value) {
    _isLoading = value;
    notifyListeners();
  }

  bool _isLeft = true;
  bool get isLeft => _isLeft;
  set isLeft(bool value) {
    _isLeft = value;
    notifyListeners();
  }

  bool _isLogin = false;
  bool get isLogin => _isLogin;
  set isLogin(bool change) {
    isLoading = kLoading;
    notifyListeners();
    Future.delayed(Duration(seconds: 2), () {
      _isLogin = change;
      isLoading = kLoadStop;
      notifyListeners();
    });
  }
}
