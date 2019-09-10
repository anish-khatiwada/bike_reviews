import 'package:flutter/material.dart';
import '../model/fuel.dart';
import '../ui/detailList.dart';

class FuelDetails extends StatelessWidget{

  var fuel1=fuelReport[0];
  var fuel2=fuelReport[1];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.only(top: 10),
            child:Column(
              children: <Widget>[
                DetailList("Fuel AT",fuel1.date+" "+fuel1.fuelCenter+" "+fuel1.amount),
                DetailList("Fuel AT",fuel2.date+" "+fuel2.fuelCenter+" "+fuel2.amount),

              ],
            )));
  }

}