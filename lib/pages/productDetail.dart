import 'package:flutter/material.dart';
import '../model/product.dart';
import '../utils/style.dart';


class ProductDetail extends StatelessWidget {
  final Product product;

  ProductDetail({this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            tag: "bg",
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Color(0xFFFFC5C5),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        left: 18, right: 18, top: 50, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          product.type,
                          style: AppStyle.appbarStyle,
                        ),
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.add_shopping_cart,
                            size: 18,
                          ),
                        )
                      ],
                    ),
                  ),
                  Hero(
                    tag: product.name,
                    child: Image.asset(
                      product.imgUrl,
                      width: 280,
                      height: 250,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    product.name,
                    style: AppStyle.headingStyle,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "The all new FZS FI weighing 137 kgs with improved engine"
                        " settings makes the bike even more responsive leading"
                        " to quick initial pickup and delivering smooth passing"
                        " acceleration.",
                    style: AppStyle.descStyle,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                      "Front 1ch ABS & Disc Brake"
                      "Air-cooled 4-stroke 149cc SOHC, 2-valve, single-cylinder fuel-injected “BLUE CORE”"
                      "The Negative LCD instrument cluster panel has a black background and white lettering."
                      "LED headlight provides excellent visibility over a wide range" ,
                      style: AppStyle.descStyle),
                  SizedBox(
                    height: 40,
                  ),
                  SafeArea(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "RS.+{product.price}",
                          style: AppStyle.headingStyle,
                        ),
                        FlatButton(
                          child: Text("Add to cart".toUpperCase(),
                              style: AppStyle.flatButtonStyle),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
