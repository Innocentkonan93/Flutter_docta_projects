import 'package:docta/providers/doctors_provider.dart';
import 'package:flutter/material.dart';
import 'package:docta/screens/doctor_detail_screen.dart';

import 'package:provider/provider.dart';

class DoctorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final doctorData = Provider.of<Doctors>(context);
    final doctors = doctorData.items;

    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              decoration: new InputDecoration(
                  prefixIcon: new Icon(Icons.search),
                  fillColor: Colors.indigo,
                  labelText: 'Rechercher'),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ChangeNotifierProvider.value(
                    value: doctors[index],
                    child: buildDoctorCard(
                      context,
                      doctors[index].name,
                      doctors[index].work,
                      () {
                        Navigator.pushNamed(
                          context,
                          DoctorDetailScreen.routeName,
                          arguments: doctors[index].id,
                        );
                      },
                    ),
                  );
                },
                itemCount: doctors.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget buildDoctorCard(
  BuildContext context,
  String title,
  String subtitle,
  Function doctorRoute,
) {
  return InkWell(
    onTap: doctorRoute,
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey[400],
            blurRadius: 0, // soften the shadow
            spreadRadius: 0, //extend the shadow
            offset: Offset(
              0, // Move to right 10  horizontally
              5.0, // Move to bottom 5 Vertically
            ),
          )
        ],
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 37,
            child: Icon(Icons.person),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(
                height: 10,
              ),
              Text(subtitle),
            ],
          )
        ],
      ),
    ),
  );
}
