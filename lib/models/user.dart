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




// import 'package:hive/hive.dart';

// part 'user.g.dart'; // Required for Hive code generation

// @HiveType(typeId: 0) // typeId must be unique across all models
// class User extends HiveObject {
//   @HiveField(0)
//   final String name;

//   @HiveField(1)
//   final String email;

//   @HiveField(2)
//   final String role;

//   @HiveField(3)
//   final String password;

//   @HiveField(4)
//   bool isBlocked;

//   User({
//     required this.name,
//     required this.email,
//     required this.role,
//     required this.password,
//     this.isBlocked = false,
//   });
// }
