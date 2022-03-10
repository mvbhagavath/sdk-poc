import 'dart:async';

import 'package:flutter/services.dart';

class Plugin1 {
  static const MethodChannel _channel = MethodChannel('plugin1');

  static String get whoAmI {
    return "I am Plugin 1";
  }

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
