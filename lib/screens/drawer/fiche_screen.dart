import 'package:docta/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class FicheScreen extends StatefulWidget {
  static const routeName = '/ficheMedical';

  @override
  _FicheScreenState createState() => _FicheScreenState();
}

class _FicheScreenState extends State<FicheScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: MainDrawer(),
      body: Center(
        child: Text('Fiche Medical'),
      ),
    );
  }
}
