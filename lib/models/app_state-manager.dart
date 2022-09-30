import 'package:flutter/material.dart';
import 'dart:async';

class AppStateManager extends ChangeNotifier {
  bool _initialized = false;
  bool _loggedIn = false;
  bool _isLanded = false;
  bool _goToRegister = false;
  bool _goToLogin = false;

  late String _username;

  String get username => _username;

  setname(String username) {
    _username = username;
    notifyListeners();
  }

  bool get isInitialized => _initialized;

  bool get goToRegisters => _goToRegister;

  bool get goToLogin => _goToLogin;

  bool get isLoggedIn => _loggedIn;

  bool get isLanded => _isLanded;

  void initializeApp() {
    Timer(
      const Duration(milliseconds: 5000),
      () {
        _initialized = true;
        notifyListeners();
      },
    );
  }

  void login() {
    _loggedIn = true;
    notifyListeners();
  }

  void landApp() {
    _isLanded = true;
    notifyListeners();
  }

  void goToRegister() {
    _goToRegister = true;
    notifyListeners();
  }

  void goBackRegister() {
    _goToRegister = false;
    notifyListeners();
  }

  void goTologin() {
    _goToLogin = true;

    notifyListeners();
  }

  void logout() {
    _loggedIn = false;
    _initialized = false;

    initializeApp();
    notifyListeners();
  }
}
