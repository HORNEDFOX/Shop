import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop/theme/colors.dart' as colors;

import '../model/product.dart';

class ProductCard extends StatelessWidget {

  final String type;
  final Product product;

  ProductCard({required this.type, required this.product});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Expanded(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                          height: 58,
                          width: 69,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              image: DecorationImage(
                                image: NetworkImage("${product.imageURL}"),
                                fit: BoxFit.cover,
                              ))),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(right: 8),
                                    child: Text(
                                      "${product.name}",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    "assets/images/star.svg",
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 4),
                                    child: Text(
                                      "${product.rating}",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      "${product.price} ₽",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: colors.plainOcean,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: type == "buy"
                      ? (IconButton(
                          icon: SvgPicture.asset(
                            "assets/images/trash-2.svg",
                            color: Colors.white,
                          ),
                          onPressed: () {}))
                      : (IconButton(
                          icon: SvgPicture.asset(
                            "assets/images/shopping-cart.svg",
                            color: Colors.white,
                          ),
                          onPressed: () {})),
                ),
              ],
            ),
          ),
        ),
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}
