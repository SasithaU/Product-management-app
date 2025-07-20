











// import 'package:flutter/material.dart';

// class PrintInvoicePage extends StatelessWidget {
//   const PrintInvoicePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Print Invoice'),
//         backgroundColor: Colors.pinkAccent,
//       ),
//       body: Container(
//         padding: const EdgeInsets.all(16.0),
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.pinkAccent, Colors.pink],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: Card(
//           elevation: 8,
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Center(
//                   child: Text(
//                     'INVOICE',
//                     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: const [
//                     Text('Invoice #: 00123'),
//                     Text('Date: 2025-07-19'),
//                   ],
//                 ),
//                 const Divider(thickness: 1, height: 32),
//                 const Text('Billed To: John Doe'),
//                 const Text('Address: 123 Sample Street, Colombo'),
//                 const SizedBox(height: 20),
//                 Table(
//                   border: TableBorder.all(color: Colors.grey),
//                   children: const [
//                     TableRow(
//                       decoration: BoxDecoration(color: Colors.black12),
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Text('Item', style: TextStyle(fontWeight: FontWeight.bold)),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Text('Qty', style: TextStyle(fontWeight: FontWeight.bold)),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Text('Price', style: TextStyle(fontWeight: FontWeight.bold)),
//                         ),
//                       ],
//                     ),
//                     TableRow(
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Text('Shampoo'),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Text('2'),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Text('LKR 1500'),
//                         ),
//                       ],
//                     ),
//                     TableRow(
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Text('Face Cream'),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Text('1'),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Text('LKR 2000'),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 20),
//                 const Align(
//                   alignment: Alignment.centerRight,
//                   child: Text(
//                     'Total: LKR 5000',
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 const Text('Thank you for your purchase!', textAlign: TextAlign.center),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }









// import 'package:flutter/material.dart';

// class PrintInvoicePage extends StatelessWidget {
//   const PrintInvoicePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Print Invoice'),
//         backgroundColor: Colors.pinkAccent,
//       ),
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.pinkAccent, Colors.pink],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: SafeArea(
//           child: Column(
//             children: [
//               Expanded(
//                 child: SingleChildScrollView(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Card(
//                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//                     elevation: 8,
//                     child: Padding(
//                       padding: const EdgeInsets.all(20.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Center(
//                             child: Text(
//                               'INVOICE',
//                               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                           const SizedBox(height: 20),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: const [
//                               Text('Invoice #: 00123'),
//                               Text('Date: 2025-07-19'),
//                             ],
//                           ),
//                           const Divider(thickness: 1, height: 32),
//                           const Text('Billed To: John Doe'),
//                           const Text('Address: 123 Sample Street, Colombo'),
//                           const SizedBox(height: 20),
//                           Table(
//                             border: TableBorder.all(color: Colors.grey),
//                             children: const [
//                               TableRow(
//                                 decoration: BoxDecoration(color: Colors.black12),
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsets.all(8.0),
//                                     child: Text('Item', style: TextStyle(fontWeight: FontWeight.bold)),
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsets.all(8.0),
//                                     child: Text('Qty', style: TextStyle(fontWeight: FontWeight.bold)),
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsets.all(8.0),
//                                     child: Text('Price', style: TextStyle(fontWeight: FontWeight.bold)),
//                                   ),
//                                 ],
//                               ),
//                               TableRow(
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsets.all(8.0),
//                                     child: Text('Shampoo'),
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsets.all(8.0),
//                                     child: Text('2'),
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsets.all(8.0),
//                                     child: Text('LKR 1500'),
//                                   ),
//                                 ],
//                               ),
//                               TableRow(
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsets.all(8.0),
//                                     child: Text('Face Cream'),
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsets.all(8.0),
//                                     child: Text('1'),
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsets.all(8.0),
//                                     child: Text('LKR 2000'),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                           const SizedBox(height: 20),
//                           const Align(
//                             alignment: Alignment.centerRight,
//                             child: Text(
//                               'Total: LKR 5000',
//                               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                           const SizedBox(height: 30),
//                           Center(
//                             child: ElevatedButton.icon(
//                               onPressed: () {
//                                 ScaffoldMessenger.of(context).showSnackBar(
//                                   const SnackBar(content: Text('Print button clicked')),
//                                 );
//                               },
//                               icon: const Icon(Icons.print),
//                               label: const Text('Print Invoice'),
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: Colors.pinkAccent,
//                                 padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }












// import 'package:flutter/material.dart';

// class PrintInvoicePage extends StatelessWidget {
//   const PrintInvoicePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Print Invoice'),
//         backgroundColor: Colors.indigo,
//       ),
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.indigo, Colors.indigoAccent],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: SafeArea(
//           child: Column(
//             children: [
//               Expanded(
//                 child: SingleChildScrollView(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Card(
//                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//                     elevation: 8,
//                     child: Padding(
//                       padding: const EdgeInsets.all(20.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Center(
//                             child: Text(
//                               'INVOICE',
//                               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                           const SizedBox(height: 20),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: const [
//                               Text('Invoice #: 00123'),
//                               Text('Date: 2025-07-19'),
//                             ],
//                           ),
//                           const Divider(thickness: 1, height: 32),
//                           const Text('Billed To: John Doe'),
//                           const Text('Address: 123 Sample Street, Colombo'),
//                           const SizedBox(height: 20),
//                           Table(
//                             border: TableBorder.all(color: Colors.grey),
//                             children: const [
//                               TableRow(
//                                 decoration: BoxDecoration(color: Colors.black12),
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsets.all(8.0),
//                                     child: Text('Item', style: TextStyle(fontWeight: FontWeight.bold)),
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsets.all(8.0),
//                                     child: Text('Qty', style: TextStyle(fontWeight: FontWeight.bold)),
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsets.all(8.0),
//                                     child: Text('Price', style: TextStyle(fontWeight: FontWeight.bold)),
//                                   ),
//                                 ],
//                               ),
//                               TableRow(
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsets.all(8.0),
//                                     child: Text('Shampoo'),
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsets.all(8.0),
//                                     child: Text('2'),
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsets.all(8.0),
//                                     child: Text('LKR 1500'),
//                                   ),
//                                 ],
//                               ),
//                               TableRow(
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsets.all(8.0),
//                                     child: Text('Face Cream'),
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsets.all(8.0),
//                                     child: Text('1'),
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsets.all(8.0),
//                                     child: Text('LKR 2000'),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                           const SizedBox(height: 20),
//                           const Align(
//                             alignment: Alignment.centerRight,
//                             child: Text(
//                               'Total: LKR 5000',
//                               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                           const SizedBox(height: 30),
//                           Center(
//                             child: ElevatedButton.icon(
//                               onPressed: () {
//                                 ScaffoldMessenger.of(context).showSnackBar(
//                                   const SnackBar(content: Text('Print button clicked')),
//                                 );
//                               },
//                               icon: const Icon(Icons.print),
//                               label: const Text('Print Invoice'),
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: Colors.indigo,
//                                 padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
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
      appBar: AppBar(
        title: const Text('Print Invoice'),
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
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16.0),
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    elevation: 8,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Center(
                            child: Text(
                              'INVOICE',
                              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Invoice #: 00123'),
                              Text('Date: 2025-07-19'),
                            ],
                          ),
                          const Divider(thickness: 1, height: 32),
                          const Text('Billed To: John Doe'),
                          const Text('Address: 123 Sample Street, Colombo'),
                          const SizedBox(height: 20),
                          Table(
                            border: TableBorder.all(color: Colors.grey),
                            children: const [
                              TableRow(
                                decoration: BoxDecoration(color: Colors.black12),
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('Item', style: TextStyle(fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('Qty', style: TextStyle(fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('Price', style: TextStyle(fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('Shampoo'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('2'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('LKR 1500'),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('Face Cream'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('1'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('LKR 2000'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          const Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Total: LKR 5000',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(height: 30),
                          Center(
                            child: ElevatedButton.icon(
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('Print button clicked')),
                                );
                              },
                              icon: const Icon(Icons.print),
                              label: const Text('Print Invoice'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.indigo,
                                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                                // Adjusted text color for better visibility
                                foregroundColor: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
