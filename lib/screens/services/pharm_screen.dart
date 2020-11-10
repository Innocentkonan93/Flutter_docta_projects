import 'package:flutter/material.dart';

class PharmScreen extends StatefulWidget {
  @override
  _PharmScreenState createState() => _PharmScreenState();
}

class _PharmScreenState extends State<PharmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Les pharmacies'),
      ),
      body: Center(
        child: Text('pharmacie'),
      ),
    );
  }
}
