import 'package:flutter/material.dart';

import '../screens/drawer/facture_screen.dart';
import '../screens/drawer/fiche_screen.dart';
import '../screens/drawer/payment_screen.dart';
import '../screens/drawer/setting_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
            alignment: Alignment.center,
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 60,
              child: Icon(Icons.person,
                  size: 75, color: Theme.of(context).accentColor),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: [
                  buildMenuItem(
                    'Fiche Medicale',
                    () {
                      Navigator.pushReplacementNamed(
                        context,
                        FicheScreen.routeName,
                      );
                    },
                    Icons.medical_services_sharp,
                    Colors.indigo[900],
                  ),
                  buildMenuItem(
                    'Factures',
                    () {
                      Navigator.pushReplacementNamed(
                        context,
                        FactureScreen.routeName,
                      );
                    },
                    Icons.receipt,
                    Colors.indigo[900],
                  ),
                  buildMenuItem(
                    'Payement',
                    () {
                      Navigator.pushReplacementNamed(
                        context,
                        PaymentScreen.routeName,
                      );
                    },
                    Icons.payment,
                    Colors.indigo[900],
                  ),
                  buildMenuItem(
                    'Paramètres',
                    () {
                      Navigator.pushReplacementNamed(
                        context,
                        SettingScreen.routeName,
                      );
                    },
                    Icons.settings,
                    Colors.indigo[900],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              bottom: 30,
            ),
            child: InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Deconnexion',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.logout,
                    semanticLabel: 'Logout',
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildMenuItem(
    String title, Function menuRoute, IconData icon, Color color) {
  return GestureDetector(
    onTap: menuRoute,
    child: CircleAvatar(
      backgroundColor: color,
      child: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              icon,
              size: 55,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    ),
  );
}
