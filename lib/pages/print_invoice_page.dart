// import 'package:flutter/material.dart';

// class PrintInvoicePage extends StatelessWidget {
//   const PrintInvoicePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(title: const Text('Print Invoice')), body: const Center(child: Text('Print Invoice - Interface Only')));
//   }
// }








// import 'package:flutter/material.dart';

// class PrintInvoicePage extends StatelessWidget {
//   const PrintInvoicePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Print Invoice')),
//       body: Center(
//         child: Card(
//           elevation: 5,
//           margin: const EdgeInsets.all(24),
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//           child: const Padding(
//             padding: EdgeInsets.all(32.0),
//             child: Text('Print Invoice - Interface Only', style: TextStyle(fontSize: 18)),
//           ),
//         ),
//       ),
//     );
//   }
// }











import 'package:flutter/material.dart';

class PrintInvoicePage extends StatelessWidget {
  const PrintInvoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Print Invoice'), backgroundColor: Colors.pinkAccent),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.pinkAccent, Colors.pink],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: const Center(
          child: Text(
            'Print Invoice ',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
