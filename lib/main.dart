import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import './screens/home_screen.dart';
import './screens/create_screen.dart';
import './screens/detail_screen.dart';

void main() {
  runApp(ProviderScope(child: MyApp())); // Riverpod 사용 가능하도록 설정
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter CRUD',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/create': (context) => CreateScreen(),
        '/detail': (context) => DetailScreen(),
      },
    );
  }
}
