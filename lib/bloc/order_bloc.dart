import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../model/order.dart';
import '../model/basket.dart';


part 'order_state.dart';
part 'order_event.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {

  OrderBloc() : super(OrderLoading()) {
    on<LoadOrder>(_onLoadOrder);
    on<UpdateOrder>(_onUpdateOrder);
    on<AddOrder>(_onAddOrder);
  }

  void _onLoadOrder(LoadOrder event, Emitter<OrderState> emit) {
    add(UpdateOrder(Order.order));
  }

  void _onUpdateOrder(UpdateOrder event, Emitter<OrderState> emit) {
    emit(OrderLoaded(orders: event.orders));
  }

  void _onAddOrder(AddOrder event, Emitter<OrderState> emit) {
    Order.order.add(Order(id: Order.order.last.id+1, idUser: event.basket.idUser, number: Order.order.last.number+1, totalPrice: event.basket.totalCoast, date: DateTime.now(), product: event.basket.product.toList()));
    emit(OrderLoaded(orders: Order.order));
  }
}
