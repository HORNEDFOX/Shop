import 'package:shop/model/basket.dart';
import 'package:shop/model/product.dart';

class Order {
  final int id;
  final int idUser;
  final int number;
  final int totalPrice;
  final DateTime date;
  final List<Product> product;

  Order(
      {required this.id, required this.idUser, required this.number, required this.totalPrice, required this.date, required this.product});

  static List<Order> order = [
    Order(
      id: 1,
      idUser: 1,
      number: 1,
      totalPrice: 566,
      date: DateTime.utc(2022, 03, 22),
      product: [
        Product(
          id: 1,
          idCategory: 1,
          name: 'Картофель',
          rating: 4.75,
          price: 234,
          imageURL: 'https://images.unsplash.com/photo-1518977676601-b53f82aba655?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
        ),
        Product(
          id: 2,
          idCategory: 1,
          name: 'Морковь',
          rating: 5,
          price: 123,
          imageURL: 'https://images.unsplash.com/photo-1582515073490-39981397c445?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1469&q=80',
        ),
        Product(
          id: 3,
          idCategory: 1,
          name: 'Помидор',
          rating: 4.5,
          price: 209,
          imageURL: 'https://images.unsplash.com/photo-1561136594-7f68413baa99?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
        ),
      ],
    ),
    Order(
      id: 2,
      idUser: 1,
      number: 2,
      totalPrice: 357,
      date: DateTime.utc(2022, 03, 22),
      product: [
        Product(
          id: 1,
          idCategory: 1,
          name: 'Картофель',
          rating: 4.75,
          price: 234,
          imageURL: 'https://images.unsplash.com/photo-1518977676601-b53f82aba655?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
        ),
        Product(
          id: 2,
          idCategory: 1,
          name: 'Морковь',
          rating: 5,
          price: 123,
          imageURL: 'https://images.unsplash.com/photo-1582515073490-39981397c445?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1469&q=80',
        ),
      ],
    ),
  ];

}