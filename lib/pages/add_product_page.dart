
// import 'package:flutter/material.dart';
// import '../data/product_data.dart';

// class AddProductPage extends StatefulWidget {
//   const AddProductPage({super.key});

//   @override
//   State<AddProductPage> createState() => _AddProductPageState();
// }

// class _AddProductPageState extends State<AddProductPage> {
//   final nameController = TextEditingController();
//   final priceController = TextEditingController();

//   void addProduct() {
//     setState(() {
//       productList.add({
//         'name': nameController.text,
//         'price': priceController.text,
//       });
//       nameController.clear();
//       priceController.clear();
//     });
//     ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Product added')));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Add Product')),
//       body: Padding(
//         padding: const EdgeInsets.all(24.0),
//         child: Card(
//           elevation: 8,
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//           child: Padding(
//             padding: const EdgeInsets.all(24.0),
//             child: Column(
//               children: [
//                 const Text(
//                   'Enter Product Details',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(height: 20),
//                 TextField(
//                   controller: nameController,
//                   decoration: const InputDecoration(
//                     labelText: 'Product Name',
//                     border: OutlineInputBorder(),
//                     prefixIcon: Icon(Icons.shopping_cart),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 TextField(
//                   controller: priceController,
//                   decoration: const InputDecoration(
//                     labelText: 'Product Price',
//                     border: OutlineInputBorder(),
//                     prefixIcon: Icon(Icons.attach_money),
//                   ),
//                 ),
//                 const SizedBox(height: 24),
//                 FilledButton(onPressed: addProduct, child: const Text('Add Product')),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }








// import 'package:flutter/material.dart';
// import '../data/product_data.dart';

// class AddProductPage extends StatefulWidget {
//   const AddProductPage({super.key});

//   @override
//   State<AddProductPage> createState() => _AddProductPageState();
// }

// class _AddProductPageState extends State<AddProductPage> {
//   final nameController = TextEditingController();
//   final priceController = TextEditingController();

//   void addProduct() {
//     setState(() {
//       productList.add({
//         'name': nameController.text,
//         'price': priceController.text,
//       });
//       nameController.clear();
//       priceController.clear();
//     });
//     ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(content: Text('🎉 Product added!')),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Add Product'), backgroundColor: Colors.teal),
//       body: Container(
//         padding: const EdgeInsets.all(20),
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.teal, Colors.greenAccent],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: Column(
//           children: [
//             TextField(
//               controller: nameController,
//               decoration: const InputDecoration(
//                 labelText: 'Product Name',
//                 border: OutlineInputBorder(),
//                 fillColor: Colors.white,
//                 filled: true,
//               ),
//             ),
//             const SizedBox(height: 15),
//             TextField(
//               controller: priceController,
//               keyboardType: TextInputType.number,
//               decoration: const InputDecoration(
//                 labelText: 'Product Price',
//                 border: OutlineInputBorder(),
//                 fillColor: Colors.white,
//                 filled: true,
//               ),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton.icon(
//               onPressed: addProduct,
//               icon: const Icon(Icons.add),
//               label: const Text('Add Product'),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.teal[700],
//                 foregroundColor: Colors.white,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }












import 'package:flutter/material.dart';
import '../data/product_data.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({super.key});

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  final nameController = TextEditingController();
  final priceController = TextEditingController();

  void addProduct() {
    setState(() {
      productList.add({
        'name': nameController.text,
        'price': priceController.text,
      });
      nameController.clear();
      priceController.clear();
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('🎉 Product added!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Product'), backgroundColor: Colors.indigo),
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.indigo, Colors.indigoAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Product Name',
                border: OutlineInputBorder(),
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: priceController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Product Price',
                border: OutlineInputBorder(),
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: addProduct,
              icon: const Icon(Icons.add),
              label: const Text('Add Product'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}