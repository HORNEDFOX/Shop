import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop/theme/colors.dart' as colors;

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.type}) : super(key: key);

  final String type;

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
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://images.unsplash.com/photo-1601493700631-2b16ec4b4716?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80"),
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
                                      "Манго",
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
                                      "4.7",
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
                                      "60 ₽",
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
