part of 'product_bloc.dart';

abstract class ProductEvent extends Equatable{
  const ProductEvent();

  @override
  List<Object> get props => [];
}

class LoadProduct extends ProductEvent{
  final int category;

  LoadProduct(this.category);
}

class UpdateProduct extends ProductEvent {
  final List<Product> products;

  UpdateProduct(this.products);

  @override
  List<Object> get props => [products];
}