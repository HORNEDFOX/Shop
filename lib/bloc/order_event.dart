part of 'order_bloc.dart';

abstract class OrderEvent extends Equatable{
  const OrderEvent();

  @override
  List<Object> get props => [];
}

class LoadOrder extends OrderEvent{
  final int idUser;

  LoadOrder(this.idUser);
}

class UpdateOrder extends OrderEvent {
  final List<Order> orders;

  UpdateOrder(this.orders);

  @override
  List<Object> get props => [orders];
}

class AddOrder extends OrderEvent{
  final Basket basket;

  AddOrder(this.basket);
}