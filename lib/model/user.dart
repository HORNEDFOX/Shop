class User{
  final int id;
  final String name;
  final String surname;
  final String ? imageURL;

  User({required this.id, required this.name, required this.surname, this.imageURL});

  static User user = User(
    id: 1,
    name: 'Арсений',
    surname: 'Иванов',
    imageURL: "https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1148&q=80",
  );
}