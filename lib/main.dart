// import 'package:flutter/material.dart';
// import 'pages/login_page.dart';

// void main() {
//   runApp(const ProductApp());
// }

// class ProductApp extends StatelessWidget {
//   const ProductApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return 
//     MaterialApp(
//       title: 'Product Management App',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: LoginPage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }











import 'package:flutter/material.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const ProductApp());
}

class ProductApp extends StatelessWidget {
  const ProductApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Management App',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}