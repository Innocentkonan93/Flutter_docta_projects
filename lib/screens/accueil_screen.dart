import 'package:flutter/material.dart';

import '../screens/services_screen.dart';

class AccueilScreen extends StatefulWidget {
  static const routeName = '/';
  @override
  _AccueilScreenState createState() => _AccueilScreenState();
}

class _AccueilScreenState extends State<AccueilScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            'Bienvenu,',
            style: Theme.of(context).textTheme.headline4,
          ),
          Expanded(child: ServiceScreen()),
        ],
      ),
    );
  }
}
