import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/theme/colors.dart' as colors;

import '../bloc/category_bloc.dart';
import '../widget/catalogCard.dart';

class Catalog extends StatelessWidget {
  const Catalog({Key? key}) : super(key: key);

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
              Container(
                padding:
                    EdgeInsets.only(left: 20, right: 20, bottom: 8, top: 24),
                child: Text(
                  'Каталог',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              BlocBuilder<CategoryBloc, CategoryState>(
                builder: (context, state) {
                  if (state is CategoryLoading) {
                    return Expanded(
                      child: GridView.count(
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                        crossAxisCount: 2,
                        children: List.generate(10, (index) {
                          return Center(
                            child: Text("${state}"),
                          );
                        }),
                      ),
                    );
                  }
                  if (state is CategoryLoaded) {
                   return Expanded(
                      child: GridView.count(
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                        crossAxisCount: 2,
                        children: List.generate(state.categories.length, (index) {
                          return Center(
                            child: CatalogCard(category: state.categories.elementAt(index)),
                          );
                        }),
                      ),
                    );
                  }
                  return Text("No state ${state.toString()}");
                },
              ),
            ],
          ),
        ),
    );
  }
}
