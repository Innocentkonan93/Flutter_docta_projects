import 'package:docta/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class FactureScreen extends StatefulWidget {
  static const routeName = '/facture';

  @override
  _FactureScreenState createState() => _FactureScreenState();
}

class _FactureScreenState extends State<FactureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: MainDrawer(),
      body: Center(
        child: Text('Facture'),
      ),
    );
  }
}
