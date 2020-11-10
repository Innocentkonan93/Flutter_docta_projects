import 'package:docta/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  static const routeName = '/payment';
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: MainDrawer(),
      body: Center(
        child: Text('Payements'),
      ),
    );
  }
}
