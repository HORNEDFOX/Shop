import 'package:shop/model/product.dart';

class Order {
  final int id;
  final int idUser;
  final String number;
  final String totalPrice;
  final DateTime date;
  final List<Product> product;

  Order(
      {required this.id, required this.idUser, required this.number, required this.totalPrice, required this.date, required this.product});

}