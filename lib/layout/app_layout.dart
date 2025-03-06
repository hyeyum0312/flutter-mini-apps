import 'package:flutter/material.dart';

class AppLayout extends StatelessWidget {
  final Widget child;

  const AppLayout({required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter ")),
      body: child,
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Text("© 2025 My App", textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
