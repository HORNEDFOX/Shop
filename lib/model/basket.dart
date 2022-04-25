import 'package:shop/model/product.dart';

class Basket {
  final List<Product> product;
  final int totalCoast;
  final int idUser;

  Basket({required this.product, required this.totalCoast, required this.idUser});
}