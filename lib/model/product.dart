class Product{
  final int id;
  final int idCategory;
  final String name;
  final double rating;
  final int price;
  final String imageURL;

  Product({required this.id, required this.idCategory, required this.name, required this.rating, required this.price, required this.imageURL});

  static List<Product> products = [
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
    Product(
      id: 4,
      idCategory: 2,
      name: 'Банан',
      rating: 4,
      price: 78,
      imageURL: 'https://images.unsplash.com/photo-1603833665858-e61d17a86224?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80',
    ),
    Product(
      id: 5,
      idCategory: 2,
      name: 'Яблоко',
      rating: 3.8,
      price: 34,
      imageURL: 'https://images.unsplash.com/photo-1560806887-1e4cd0b6cbd6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
    ),
    Product(
      id: 6,
      idCategory: 2,
      name: 'Киви',
      rating: 5,
      price: 256,
      imageURL: 'https://images.unsplash.com/photo-1572539280469-9c738c59964d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=662&q=80',
    ),
  ];
}