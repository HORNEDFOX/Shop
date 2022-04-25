class Category {
  final int id;
  final int number;
  final String name;
  final String imageURL;

  Category({required this.id, required this.name, required this.number, required this.imageURL});

  @override
  List<Object?> get props => [id, name, number, imageURL];

  Category copyWith({
    int? id,
    int? number,
    String? name,
    String? imageURL,
  }) {
    return Category(
      id: id ?? this.id,
      name: name ?? this.name,
      number: number ?? this.number,
      imageURL: imageURL ?? this.imageURL,
    );
  }

  static List<Category> category = [
    Category(
      id: 1,
      number: 30,
      name: 'Овощи',
      imageURL: 'https://images.unsplash.com/photo-1542838132-92c53300491e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
    ),
    Category(
      id: 2,
      name: 'Фрукты',
      number: 45,
      imageURL: 'https://images.unsplash.com/photo-1498579397066-22750a3cb424?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
    ),
    Category(
      id: 3,
      name: 'Молочка',
      number: 120,
      imageURL: 'https://images.unsplash.com/photo-1601599561213-832382fd07ba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80',
    ),
    Category(
      id: 4,
      name: 'Бакалея',
      number: 134,
      imageURL: 'https://images.unsplash.com/photo-1545601445-4d6a0a0565f0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
    ),
    Category(
      id: 5,
      name: 'Морепродукты',
      number: 56,
      imageURL: 'https://images.unsplash.com/photo-1536264203436-5919023592e9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
    ),
    Category(
      id: 6,
      name: 'Мясо',
      number: 267,
      imageURL: 'https://images.unsplash.com/photo-1589372545389-bb4d9d138bdb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1476&q=80',
    ),
  ];
}
