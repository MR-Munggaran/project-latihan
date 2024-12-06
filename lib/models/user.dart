class User {
  final String username;
  final String password;

  User({required this.password, required this.username});
}

List<User> dummyUsers = [
  User(password: '123456', username: 'admin'),
  User(password: '098765', username: 'user'),
];
