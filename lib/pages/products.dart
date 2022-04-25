import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/theme/colors.dart' as colors;
import '../bloc/product_bloc.dart';
import '../widget/productCard.dart';

class Products extends StatelessWidget {
  final String name;
  final int category;

  Products({required this.name, required this.category});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ProductBloc()..add(LoadProduct(category)),
    child: Scaffold(
      appBar: AppBar(
        title: Text(name),
        elevation: 0,
        backgroundColor: colors.plainOcean,
      ),
      body: Container(
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocBuilder<ProductBloc, ProductState>(builder: (context, state) {
              if (state is ProductLoaded) {
                return Expanded(
                  child: ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      itemCount: state.products.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ProductCard(type: "product", product: state.products.elementAt(index),);
                      }),
                );
              }
              if (state is ProductLoading) {
                return Text("${state.props}");
              }
              return Text("No state");
            }),
          ],
        ),
      ),
    ),
    );
  }
}
