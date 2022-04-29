part of 'basket_bloc.dart';

abstract class BasketEvent extends Equatable{
  const BasketEvent();

  @override
  List<Object> get props => [];
}

class LoadBasket extends BasketEvent{
  final int idUser;

  LoadBasket(this.idUser);
}

class UpdateBasket extends BasketEvent {
  final Basket productsBasket;

  UpdateBasket(this.productsBasket);

  @override
  List<Object> get props => [productsBasket];
}

class AddProductBasket extends BasketEvent {
  final Product product;

  AddProductBasket(this.product);

  @override
  List<Object> get props => [product];
}

class DeleteProductBasket extends BasketEvent {
  final Product product;

  DeleteProductBasket(this.product);
}

class ClearBasket extends BasketEvent{}