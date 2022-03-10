import 'dart:async';

import 'package:flutter/services.dart';

class Plugin2 {
  static const MethodChannel _channel = MethodChannel('plugin2');

  static String get whoAmI {
    return "I am Plugin 2 from the same repo";
  }

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
