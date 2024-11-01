import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _isInstructor = false;
  bool get isInstructor => _isInstructor;
  set isInstructor(bool value) {
    _isInstructor = value;
  }

  bool _isVideoUploaded = false;
  bool get isVideoUploaded => _isVideoUploaded;
  set isVideoUploaded(bool value) {
    _isVideoUploaded = value;
  }

  String _frontfooturl = '';
  String get frontfooturl => _frontfooturl;
  set frontfooturl(String value) {
    _frontfooturl = value;
  }

  String _cutshoturl = '';
  String get cutshoturl => _cutshoturl;
  set cutshoturl(String value) {
    _cutshoturl = value;
  }

  String _backshoturl = '';
  String get backshoturl => _backshoturl;
  set backshoturl(String value) {
    _backshoturl = value;
  }
}
