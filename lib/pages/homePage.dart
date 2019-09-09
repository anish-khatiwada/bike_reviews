import 'package:flutter/material.dart';
import '../model/product.dart';
import '../utils/style.dart';

import 'productDetail.dart';

class HomePage extends StatelessWidget {
  final product = products[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 350,
            width: double.infinity,
            child: LayoutBuilder(
              builder: (cx, ct) {
                double w = ct.maxWidth;
                double h = ct.maxHeight;

                return Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topRight,
                      child: Hero(
                        tag: "bg",
                        child: Container(
                          width: w * .9,
                          height: h * .70,
                          color: Color(0xFFFFC5C5),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: 65,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            product.type,
                            style: AppStyle.appbarStyle,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(product.name, style: AppStyle.headingStyle)
                        ],
                      ),
                    ),
                    Positioned(
                      top: h * .32,
                      left: -50,
                      child: Hero(
                        tag: product.name,
                        child: Image.asset(
                          product.imgUrl,
                          width: 270,
                          height: 200,
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
          SizedBox(
            height: 5,
          ),
          SafeArea(
             child: Padding(
                padding: EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Amazing Speed.",
                      style: AppStyle.headingStyle2,
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Incredible Power.",
                      style: AppStyle.headingStyle2,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                        "The Yamaha FZ Series set a new benchmark for biking. The FZS-FI takes it to the next level. ",
                        style: AppStyle.descStyle),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 22),
                        child: IconButton(
                          icon: Icon(Icons.arrow_forward),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => ProductDetail(product: product)));
                          },
                        ),
                      ),
                    )
                  ],
                ),
              )
          )

        ],
      ),
    );
  }
}
