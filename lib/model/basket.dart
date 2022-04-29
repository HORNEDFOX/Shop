import 'package:shop/model/product.dart';

class Basket {
  late int totalCoast = 0;
  late int idUser = 0;
  final List<Product> product;

  Basket(this.product);

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