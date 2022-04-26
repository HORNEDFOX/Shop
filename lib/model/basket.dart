import 'package:shop/model/product.dart';

class Basket {
  late int totalCoast = 0;
  final int idUser;
  final List<Product> product;

  Basket(this.product, {required this.idUser});

  void AddBasket(Product newProduct) {
    product.add(newProduct);
    totalCoast += newProduct.price;
  }

  void DeleteBasket(Product newProduct) {
    product.remove(newProduct);
    totalCoast -= newProduct.price;
  }

  void ClearBasket() {
    product.clear();
    totalCoast = 0;
  }
}