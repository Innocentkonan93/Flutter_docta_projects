import 'package:docta/providers/doctors_provider.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class DoctorDetailScreen extends StatelessWidget {
  static const routeName = '/doctor-screen';
  @override
  Widget build(BuildContext context) {
    // vraiment très important pour le partage des données entres les screen avec les routes

    final doctorid = ModalRoute.of(context).settings.arguments as String;

    final selectedDoctor =
        Provider.of<Doctors>(context, listen: false).findById(doctorid);

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedDoctor.name),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 55,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      selectedDoctor.name,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          selectedDoctor.work,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Consumer<Doctors>(
                          builder: (context, value, child) => IconButton(
                            icon: Icon(
                              selectedDoctor.isFavorite
                                  ? Icons.star
                                  : Icons.star_border,
                              color: Colors.yellow,
                            ),
                            onPressed: () {
                              selectedDoctor.toggleFavoriteState();
                            },
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Icon(
                        Icons.payment_outlined,
                        size: 30,
                        color: Theme.of(context).accentColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Consultation',
                        style: TextStyle(
                            fontSize: 20,
                            color: Theme.of(context).accentColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '${selectedDoctor.price} Francs',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: null,
                  child: Text('Prendre Rendez-vous'),
                  shape: StadiumBorder(),
                  color: Theme.of(context).accentColor,
                  textColor: Colors.white,
                )
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Fiche Praticien',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              height: MediaQuery.of(context).size.height * 0.37,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      selectedDoctor.description,
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
