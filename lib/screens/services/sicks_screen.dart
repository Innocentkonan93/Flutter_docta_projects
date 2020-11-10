import 'package:flutter/material.dart';

class SicksScreen extends StatefulWidget {
  @override
  _SicksScreenState createState() => _SicksScreenState();
}

class _SicksScreenState extends State<SicksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Les maladies'),
      ),
      body: Center(
        child: Text('maladie'),
      ),
    );
  }
}
