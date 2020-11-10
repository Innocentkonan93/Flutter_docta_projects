import 'package:docta/providers/doctors_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/doctor_detail_screen.dart';
import './screens/drawer/facture_screen.dart';
import './screens/drawer/fiche_screen.dart';
import './screens/drawer/payment_screen.dart';
import './screens/drawer/setting_screen.dart';
import 'package:docta/screens/tabs_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Doctors(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Doctor App',
        theme: ThemeData(
          primarySwatch: Colors.teal,
          accentColor: Colors.indigo[900],
          visualDensity: VisualDensity.adaptivePlatformDensity,
           canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                bodyText2: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                headline6: TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold,
                ),
              ),
        ),
        initialRoute: '/',
        routes: {
          '/': (ctx) => TabsScreen(),
          FicheScreen.routeName: (ctx) => FicheScreen(),
          FactureScreen.routeName: (ctx) => FactureScreen(),
          PaymentScreen.routeName: (ctx) => PaymentScreen(),
          SettingScreen.routeName: (ctx) => SettingScreen(),
          DoctorDetailScreen.routeName: (ctx) => DoctorDetailScreen(),
        },
      ),
    );
  }
}
