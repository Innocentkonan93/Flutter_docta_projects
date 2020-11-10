import 'package:flutter/material.dart';

class GlassScreen extends StatefulWidget {
  @override
  _GlassScreenState createState() => _GlassScreenState();
}

class _GlassScreenState extends State<GlassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lunettes'),),
      body: Center(
        child: Text('lunettes'),
      ),
    );
  }
}