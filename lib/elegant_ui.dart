import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ElegantUI {
  void main(List<String> args) {
    runApp(const MaterialApp(home: Buttons()));
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

  static Widget input(Color color, double border) {
    return TextFormField();
  }
}

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        ElegantUI.button(Colors.red, 'Action'),
      ],
    ));
  }
}
