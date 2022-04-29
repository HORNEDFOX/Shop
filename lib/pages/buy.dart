import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/theme/colors.dart' as colors;
import '../bloc/basket_bloc.dart';
import '../bloc/order_bloc.dart';
import '../model/basket.dart';
import '../model/user.dart';
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
      body: BlocBuilder<BasketBloc, BasketState>(builder: (context, state) {
        if (state is BasketLoaded) {
          return Container(
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          left: 20, right: 20, bottom: 8, top: 24),
                      child: Text(
                        'Итого',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 20, right: 20, bottom: 8, top: 24),
                      child: Text(
                        '${state.productsBasket.totalCoast} ₽',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: () async {
                      BlocProvider.of<BasketBloc>(context).add(LoadBasket(User.user.id));
                    },
                    child: ListView.builder(
                        physics: const AlwaysScrollableScrollPhysics(),
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        itemCount: state.productsBasket.product.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ProductCard(
                            type: "buy",
                            product:
                                state.productsBasket.product.elementAt(index),
                          );
                        }),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 20, right: 20, bottom: 24, top: 8),
                  height: 56,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      if (state.productsBasket.product.length != 0) {
                        _AddOrder(context, state.productsBasket);
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(colors.plainOcean),
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
          );
        }
        return Container();
      }),
    );
  }

  void _AddOrder(context, Basket basket) {
    BlocProvider.of<OrderBloc>(context).add(AddOrder(basket));
    BlocProvider.of<BasketBloc>(context).add(ClearBasket());
  }
}
