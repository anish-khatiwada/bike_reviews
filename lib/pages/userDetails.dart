import 'package:flutter/material.dart';
import '../ui/detailList.dart';
import '../model/user.dart';



class  UserDetails extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

    var user=userData[0];

    return SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.only(top: 10),
           child:Column(
               children: <Widget>[
                 DetailList("User Name",user.userName),
                 DetailList("License no.",user.licenseNo),
                 DetailList("Issued Date",user.issuedDate),
                 DetailList("License Type",user.licenseType),
               ],
           )));
  }

}