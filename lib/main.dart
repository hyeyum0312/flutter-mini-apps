import 'package:flutter/material.dart';
import 'utils/platform_helper.dart'; // 만든 파일 import

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Platform Check")),
      body: Center(
        child: Text(
          PlatformHelper.isWeb()
              ? "이 앱은 웹에서 실행 중"
              : PlatformHelper.isAndroid()
              ? "이 앱은 Android에서 실행 중"
              : PlatformHelper.isIOS()
              ? "이 앱은 iOS에서 실행 중"
              : "알 수 없는 환경",
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
