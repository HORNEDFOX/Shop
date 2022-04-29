import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/order_bloc.dart';
import '../bloc/user_bloc.dart';
import '../widget/orderCard.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocBuilder<UserBloc, UserState>(builder: (context, state) {
                if (state is UserLoaded) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 84,
                          width: 84,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                            image: DecorationImage(
                              image: NetworkImage("${state.user.imageURL}"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  "${state.user.name}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "${state.user.surname}",
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
                  );
                }
                return Container();
              }),
              Container(
                padding:
                    EdgeInsets.only(left: 20, right: 20, bottom: 8, top: 8),
                child: Text(
                  'История покупок',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              BlocBuilder<OrderBloc, OrderState>(builder: (context, state) {
                if (state is OrderLoaded) {
                  return Expanded(
                    child: ListView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        itemCount: state.orders.length,
                        itemBuilder: (BuildContext context, int index) {
                          return OrderCard(
                            order: state.orders.elementAt(index),
                          );
                        }),
                  );
                }
                return Container();
              }),
            ],
          ),
        ),
      ),
    );
  }
}
