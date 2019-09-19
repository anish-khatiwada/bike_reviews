import 'package:flutter/material.dart';
import 'pages/homePage.dart';
import 'pages/animationTest.dart';

main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));
/*
Container(
   height: screenSize.height * 0.8,
   width: double.infinity,
   child: Stack(
        children: <Widget>[
           Align(
                  alignment: Alignment.topCenter,
                  child: RotatedBox(
quarterTurns: 1,
child: Container(
width: 400.0,
padding: EdgeInsets.only(left: 50.0),
child: PlanetName(
name: _planets[_currentPlanetIndex].name.toUpperCase(),
),
),
),
),*/
