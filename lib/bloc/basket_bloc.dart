import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:shop/bloc/product_bloc.dart';
import 'package:shop/model/product.dart';

import '../model/basket.dart';


part 'basket_state.dart';
part 'basket_event.dart';

class BasketBloc extends Bloc<BasketEvent, BasketState> {
  late Basket _basket;

  BasketBloc({required int idUser}) :
        _basket = Basket(<Product>[], idUser: idUser), super(BasketLoading()) {
    on<LoadBasket>(_onLoadBasket);
    on<UpdateBasket>(_onUpdateBasket);
    on<AddProductBasket>(_onAddProductBasket);
    on<DeleteProductBasket>(_onDeleteProductBasket);
    on<ClearBasket>(_onClearBasket);
  }

  void _onLoadBasket(LoadBasket event, Emitter<BasketState> emit) {
    add(UpdateBasket(_basket));
  }

  void _onUpdateBasket(UpdateBasket event, Emitter<BasketState> emit) {
    emit(BasketLoaded(productsBasket: event.productsBasket));
  }

  void _onAddProductBasket(AddProductBasket event, Emitter<BasketState> emit) {
    _basket.AddBasket(event.product);
    add(UpdateBasket(_basket));
  }

  void _onDeleteProductBasket(DeleteProductBasket event, Emitter<BasketState> emit) {
    _basket.DeleteBasket(event.product);
    add(UpdateBasket(_basket));
  }

  void _onClearBasket(ClearBasket event, Emitter<BasketState> emit) {
    _basket.ClearBasket();
    add(UpdateBasket(_basket));
  }
}
