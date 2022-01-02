import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ElegantUi {
  void main(List<String> args) {
    runApp(MaterialApp(
      home: ElegantUiPage(),
    ));
  }

  static const MethodChannel _channel = MethodChannel('elegant_ui');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Widget button(Color color, String text) {
    return Container(
        width: double.infinity, color: color, height: 50, child: Text(text));
  }
}
