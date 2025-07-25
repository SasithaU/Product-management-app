


// import 'package:flutter/material.dart';
// import '../data/product_data.dart';

// class ViewProductsPage extends StatelessWidget {
//   const ViewProductsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('View Products')),
//       body: productList.isEmpty
//           ? const Center(child: Text('No products added yet.'))
//           : ListView.builder(
//               itemCount: productList.length,
//               itemBuilder: (context, index) {
//                 final product = productList[index];
//                 return Card(
//                   elevation: 4,
//                   margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//                   child: ListTile(
//                     leading: const Icon(Icons.shopping_bag, color: Colors.teal),
//                     title: Text(product['name'], style: const TextStyle(fontWeight: FontWeight.bold)),
//                     subtitle: Text("Price: ${product['price']}"),
//                   ),
//                 );
//               },
//             ),
//     );
//   }
// }











// import 'package:flutter/material.dart';
// import '../data/product_data.dart';

// class ViewProductsPage extends StatelessWidget {
//   const ViewProductsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('View Products'), backgroundColor: Colors.green),
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.green, Colors.lightGreen],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: productList.isEmpty
//             ? const Center(
//                 child: Text(
//                   'No products added yet.',
//                   style: TextStyle(fontSize: 18, color: Colors.white),
//                 ),
//               )
//             : ListView.builder(
//                 itemCount: productList.length,
//                 itemBuilder: (context, index) {
//                   final product = productList[index];
//                   return Card(
//                     margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                     child: ListTile(
//                       leading: const Icon(Icons.shopping_bag),
//                       title: Text(product['name']),
//                       subtitle: Text('Price: \$${product['price']}'),
//                     ),
//                   );
//                 },
//               ),
//       ),
//     );
//   }
// }














import 'package:flutter/material.dart';
import '../data/product_data.dart';

class ViewProductsPage extends StatelessWidget {
  const ViewProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('View Products'),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.indigo, Colors.indigoAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: productList.isEmpty
            ? const Center(
                child: Text(
                  'No products added yet.',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              )
            : ListView.builder(
                itemCount: productList.length,
                itemBuilder: (context, index) {
                  final product = productList[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: ListTile(
                      leading: const Icon(Icons.shopping_bag),
                      title: Text(product['name']),
                      subtitle: Text('Price: \$${product['price']}'),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
