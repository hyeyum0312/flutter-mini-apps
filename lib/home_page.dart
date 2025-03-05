import 'Package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Space 2 Text"), centerTitle: true),
      body: Center(child: Text("Press the button for speaking")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.mic),
      ),
    );
  }
}
