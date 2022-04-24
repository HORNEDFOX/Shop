import 'package:flutter/material.dart';
import 'package:shop/theme/colors.dart' as colors;
import '../widget/productCard.dart';

class Buy extends StatelessWidget {
  const Buy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wish Swish"),
        elevation: 0,
        backgroundColor: colors.plainOcean,
      ),
      body: Container(
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, bottom: 8, top: 24),
                  child: Text(
                    'Итого',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, bottom: 8, top: 24),
                  child: Text(
                    '1658 ₽',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            // Expanded used to take up the space
            Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return ProductCard(type: "buy");
                  }),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 24, top: 8),
              height: 56,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(colors.plainOcean),
                  shadowColor: MaterialStateProperty.all(Colors.white),
                  elevation: MaterialStateProperty.all(0),
                ),
                child: const Text(
                  'Оплатить',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
