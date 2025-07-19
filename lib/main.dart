import 'package:flutter/material.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const ProductApp());
}

class ProductApp extends StatelessWidget {
  const ProductApp({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    MaterialApp(
      title: 'Product Management App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}











// import 'package:flutter/material.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'models/user.dart';
// import 'models/product_model.dart';
// import 'pages/add_user_page.dart';
// import 'pages/block_user_page.dart';
// import 'pages/add_product_page.dart';
// import 'pages/view_products_page.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Hive.initFlutter();

//   Hive.registerAdapter(UserAdapter());
//   Hive.registerAdapter(ProductModelAdapter());

//   await Hive.openBox<User>('users');
//   await Hive.openBox<ProductModel>('products');

//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Local Storage App',
//       theme: ThemeData(primarySwatch: Colors.deepPurple),
//       home: const HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Admin Dashboard')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               child: const Text("Add User"),
//               onPressed: () => Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (_) => const AddUserPage()),
//               ),
//             ),
//             ElevatedButton(
//               child: const Text("Block/Unblock Users"),
//               onPressed: () => Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (_) => const BlockUserPage()),
//               ),
//             ),
//             ElevatedButton(
//               child: const Text("Add Product"),
//               onPressed: () => Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (_) => const AddProductPage()),
//               ),
//             ),
//             ElevatedButton(
//               child: const Text("View Products"),
//               onPressed: () => Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (_) => const ViewProductsPage()),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
