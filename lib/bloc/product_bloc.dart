import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../model/product.dart';


part 'product_state.dart';
part 'product_event.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {

  ProductBloc() : super(ProductLoading()) {
    on<LoadProduct>(_onLoadProduct);
    on<UpdateProduct>(_onUpdateProduct);
  }

  void _onLoadProduct(LoadProduct event, Emitter<ProductState> emit) {
    add(UpdateProduct(Product.category.where((element) => element.idCategory == event.category).toList()));
  }

  void _onUpdateProduct(UpdateProduct event, Emitter<ProductState> emit) {
    emit(ProductLoaded(products: event.products));
  }
}
