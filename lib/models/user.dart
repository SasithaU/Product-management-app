class User {
  final String name;
  final String email;
  final String role;
  final String password;
  bool isBlocked;

  User({
    required this.name,
    required this.email,
    required this.role,
    required this.password,
    this.isBlocked = false,
  });
}


