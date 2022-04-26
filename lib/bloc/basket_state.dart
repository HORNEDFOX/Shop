part of 'basket_bloc.dart';

abstract class BasketState{
  const BasketState();

  @override
  List<Object> get props => [];
}

class BasketLoading extends BasketState{}

class BasketLoaded extends BasketState{
  final Basket productsBasket;

  const BasketLoaded({required this.productsBasket});

  @override
  List<Object> get props => [productsBasket];
}