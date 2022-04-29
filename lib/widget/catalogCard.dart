import 'package:flutter/material.dart';
import 'package:shop/model/category.dart';
import 'package:shop/pages/products.dart';


class CatalogCard extends StatelessWidget {

  final Category category;

  CatalogCard({required this.category});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: InkWell(
          splashColor: Colors.white,
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Products(name: category.name, category: category.id,)));
            debugPrint('Card tapped.');
          },
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                      height: 114,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          image: DecorationImage(
                            image: NetworkImage("${category.imageURL}"),
                            fit: BoxFit.cover,
                          ))),
                ),
                Container(
                  margin: EdgeInsets.only(right: 8, left: 8, bottom: 8, top: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${category.name}',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      Text("${category.number} шт.",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        color: Colors.white,
        elevation: 2.0,
        shadowColor: Color.fromRGBO(148, 161, 187, 0.1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}
