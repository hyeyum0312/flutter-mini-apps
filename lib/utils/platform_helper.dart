import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:io';

class PlatformHelper {
  static bool isWeb() => kIsWeb;
  static bool isAndroid() => !kIsWeb && Platform.isAndroid;
  static bool isIOS() => !kIsWeb && Platform.isIOS;
}
