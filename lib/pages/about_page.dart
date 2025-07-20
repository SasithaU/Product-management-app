



// import 'package:flutter/material.dart';

// class AboutPage extends StatelessWidget {
//   const AboutPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('About'),
//         backgroundColor: Colors.deepPurple,
//       ),
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.deepPurple, Colors.deepPurpleAccent],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: const Center(
//           child: Text(
//             'About Page',
//             style: TextStyle(fontSize: 22, color: Colors.white),
//           ),
//         ),
//       ),
//     );
//   }
// }










// import 'package:flutter/material.dart';

// class AboutPage extends StatelessWidget {
//   const AboutPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('About'),
//         backgroundColor: Colors.deepPurple,
//       ),
//       body: Container(
//         padding: const EdgeInsets.all(20),
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.deepPurple, Colors.deepPurpleAccent],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: const Center(
//           child: Text(
//             'This application is designed for shop staff to manage products efficiently.\n\n'
//             'Features include adding new products, viewing product lists, and managing user access.\n\n'
//             'It helps ensure a smooth workflow for the staff by simplifying product inventory and user control.',
//             style: TextStyle(fontSize: 20, color: Colors.white, height: 1.5),
//             textAlign: TextAlign.justify,
//           ),
//         ),
//       ),
//     );
//   }
// }











import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.indigo, Colors.indigoAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: const Center(
          child: Text(
            'This application is designed for shop staff to manage products efficiently.\n\n'
            'Features include adding new products, viewing product lists, and managing user access.\n\n'
            'It helps ensure a smooth workflow for the staff by simplifying product inventory and user control.',
            style: TextStyle(fontSize: 20, color: Colors.white, height: 1.5),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}
