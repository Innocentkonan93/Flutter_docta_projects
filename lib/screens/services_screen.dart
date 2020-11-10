import 'package:flutter/material.dart';

import 'services/doctor_screen.dart';
import '../screens/services/exam_screen.dart';
import '../screens/services/glass_screen.dart';
import '../screens/services/myConsult_screen.dart';
import '../screens/services/pharm_screen.dart';
import '../screens/services/sicks_screen.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ServiceScreen extends StatelessWidget {
  static const routeName = '/services';

  Widget buildServiceContainer(
    BuildContext context,
    String title,
    Icon icon,
    Color color,
    Function serviceRoute,
  ) {
    return InkWell(
      onTap: serviceRoute,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color.withOpacity(0.9),
                color,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            SizedBox(
              height: 15,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Theme.of(context).accentColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(20),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 3 / 2.5,
        maxCrossAxisExtent: 300,
      ),
      children: [
        buildServiceContainer(
          context,
          'Faire une consultation',
          Icon(
            FontAwesomeIcons.userMd,
            size: 45,
            color: Theme.of(context).accentColor,
          ),
          Color(0x7CBEB1),
          () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DoctorScreen(),
              ),
            );
          },
        ),
        buildServiceContainer(
          context,
          'Mes examens',
          Icon(
            FontAwesomeIcons.heartbeat,
            size: 45,
            color: Theme.of(context).accentColor,
          ),
          Color(0xBF9C65),
          () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ExamScreen(),
              ),
            );
          },
        ),
        buildServiceContainer(
          context,
          'Mes consultations',
          Icon(
            FontAwesomeIcons.notesMedical,
            size: 45,
            color: Theme.of(context).accentColor,
          ),
          Color(0x7D71B1),
          () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MyConsultScreen(),
              ),
            );
          },
        ),
        buildServiceContainer(
          context,
          'Commander des lunettes',
          Icon(
            FontAwesomeIcons.glasses,
            size: 45,
            color: Theme.of(context).accentColor,
          ),
          Color(0xA85B6D),
          () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => GlassScreen(),
              ),
            );
          },
        ),
        buildServiceContainer(
          context,
          'Maladie chronique',
          Icon(
            FontAwesomeIcons.headSideCough,
            size: 45,
            color: Theme.of(context).accentColor,
          ),
          Color(0x5773A0),
          () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SicksScreen(),
              ),
            );
          },
        ),
        buildServiceContainer(
          context,
          'Pharmacies',
          Icon(
            Icons.local_pharmacy,
            size: 45,
            color: Theme.of(context).accentColor,
          ),
          Color(0x64AC5A),
          () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PharmScreen(),
              ),
            );
          },
        ),
      ],
    );
  }
}
