import 'package:flutter/material.dart';
import '../ui/detailList.dart';
import '../model/service.dart';

class ServiceDetails extends StatelessWidget{



  @override
  Widget build(BuildContext context) {

    var service=serviceReport[0];

    return SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.only(top: 10),
            child:Column(
              children: <Widget>[
                DetailList("Service  Center Name",service.serviceCenterName),
                DetailList("Serviced Date",service.date),
                DetailList("Service (at kms)",service.serviceAtKms),
                DetailList("Service  Time",service.serviceNo),
              ],
            )));
  }

}