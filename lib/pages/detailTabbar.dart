import 'package:flutter/material.dart';
import 'bikeDetails.dart'as first;
import 'serviceDetails.dart'as second;
import 'userdetails.dart'as third;
import 'fuleDetails.dart'as fourth;

class DetailsTabBar extends StatefulWidget{


  @override
  State<StatefulWidget> createState() =>new TabState();

}

class TabState extends State<DetailsTabBar> with SingleTickerProviderStateMixin{

  TabController controller;

  @override
  void initState(){
    super.initState();
    controller=new TabController(length: 4, vsync: this);
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title:new Text("Pages"),backgroundColor: Colors.pinkAccent,
        bottom: new TabBar(
          controller: controller,
            tabs: <Tab>[
              new Tab(icon:new Icon(Icons.directions_bike)),
              new Tab(icon:new Icon(Icons.departure_board)),
              new Tab(icon:new Icon(Icons.date_range)),
              new Tab(icon:new Icon(Icons.format_color_fill)),

            ]),
      ),
      body: new TabBarView(
          controller: controller,
          children: <Widget>[
          new first.BikeDetails(),
          new second.ServiceDetails(),
          new third.UserDetails(),
          new fourth.FuelDetails(),
          ]),
    );
  }

}