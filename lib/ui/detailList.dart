import 'package:flutter/material.dart';
import '../utils/style.dart';

class DetailList extends StatelessWidget {
  String tagName;
  String tagDetails;

  DetailList(String tagName, String tagDetails) {
    this.tagName = tagName;
    this.tagDetails = tagDetails;
  }
  static const Color black = Color(0xFF000000);
  static const Color orange = Color(0xFFF7941F);
  static const Color yellow = Color(0xFFFCC642);

  BoxShadow shadowAccountCard = BoxShadow(
      color: black.withOpacity(0.25),
      offset: Offset(0, 8),
      blurRadius: 16,
      spreadRadius: -2.6);

  LinearGradient gradientPrimary = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    stops: [0.0, 1],
    colors: [orange, yellow],
  );

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.maxFinite,
      margin: EdgeInsetsDirectional.fromSTEB(12, 5, 12, 5),
      height: MediaQuery.of(context).size.height * 0.15,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [shadowAccountCard]),
      child: Stack(
        children: <Widget>[
          // Left gradient background
          Container(
            height: double.maxFinite,
            width: MediaQuery.of(context).size.width * 0.47 - 24,
            decoration: BoxDecoration(
                gradient: gradientPrimary,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Left part of the card with Description
              Container(
                height: double.maxFinite,
                width: MediaQuery.of(context).size.width * 0.47 - 24,
                padding: EdgeInsetsDirectional.only(start: 16, end: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Text(
                          tagName,
                          style: AppStyle.descStyle,
                          textAlign: TextAlign.left,
                        ))
                  ],
                ),
              ),
              // Right part of the card with details
              Container(
                height: double.maxFinite,
                width: MediaQuery.of(context).size.width * 0.53 - 24,
                padding: EdgeInsetsDirectional.only(end: 16),
                alignment: Alignment(1, 0),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Text(
                      tagDetails,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
