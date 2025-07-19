// import 'package:flutter/material.dart';
// import 'dashboard_page.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final usernameController = TextEditingController();
//   final passwordController = TextEditingController();

//   void login() {
//     if (usernameController.text == 'admin' && passwordController.text == 'admin') {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => const DashboardPage()),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Invalid credentials')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Login')),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           children: [
//             TextField(controller: usernameController, decoration: const InputDecoration(labelText: 'Username')),
//             TextField(controller: passwordController, decoration: const InputDecoration(labelText: 'Password'), obscureText: true),
//             const SizedBox(height: 20),
//             ElevatedButton(onPressed: login, child: const Text('Login'))
//           ],
//         ),
//       ),
//     );
//   }
// }











// import 'package:flutter/material.dart';
// import 'dashboard_page.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final usernameController = TextEditingController();
//   final passwordController = TextEditingController();

//   void login() {
//     if (usernameController.text == 'admin' && passwordController.text == 'admin') {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => const DashboardPage()),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Invalid credentials')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Login')),
//       body: Center(
//         child: Card(
//           margin: const EdgeInsets.all(24),
//           elevation: 6,
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//           child: Padding(
//             padding: const EdgeInsets.all(24.0),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 const Text('Login', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
//                 const SizedBox(height: 20),
//                 TextField(
//                   controller: usernameController,
//                   decoration: const InputDecoration(
//                     labelText: 'Username',
//                     border: OutlineInputBorder(),
//                     prefixIcon: Icon(Icons.person),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 TextField(
//                   controller: passwordController,
//                   obscureText: true,
//                   decoration: const InputDecoration(
//                     labelText: 'Password',
//                     border: OutlineInputBorder(),
//                     prefixIcon: Icon(Icons.lock),
//                   ),
//                 ),
//                 const SizedBox(height: 24),
//                 FilledButton(onPressed: login, child: const Text('Login'))
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }













// import 'package:flutter/material.dart';
// import 'dashboard_page.dart';

// class LoginPage extends StatelessWidget {
//   LoginPage({super.key});

//   final usernameController = TextEditingController();
//   final passwordController = TextEditingController();

//   void login(BuildContext context) {
//     if (usernameController.text == 'admin' && passwordController.text == 'admin') {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => const DashboardPage()),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('❌ Invalid credentials')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.deepPurple[50],
//       body: Center(
//         child: Card(
//           elevation: 10,
//           margin: const EdgeInsets.all(24),
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//           child: Padding(
//             padding: const EdgeInsets.all(24.0),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 const Text(
//                   'Admin Login',
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(height: 20),
//                 TextField(
//                   controller: usernameController,
//                   decoration: const InputDecoration(
//                     labelText: 'Username',
//                     border: OutlineInputBorder(),
//                   ),
//                 ),
//                 const SizedBox(height: 15),
//                 TextField(
//                   controller: passwordController,
//                   obscureText: true,
//                   decoration: const InputDecoration(
//                     labelText: 'Password',
//                     border: OutlineInputBorder(),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 ElevatedButton(
//                   onPressed: () => login(context),
//                   child: const Text('Login'),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.deepPurple,
//                     foregroundColor: Colors.white,
//                     padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }








// import 'package:flutter/material.dart';
// import 'dashboard_page.dart';

// class LoginPage extends StatelessWidget {
//   LoginPage({super.key});

//   final usernameController = TextEditingController();
//   final passwordController = TextEditingController();

//   void login(BuildContext context) {
//     if (usernameController.text == 'admin' && passwordController.text == 'admin') {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => const DashboardPage()),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('❌ Invalid credentials')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background image
//           Container(
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/background.jpg'), // <- Your image path
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           // Semi-transparent overlay for readability
//           Container(
//             color: Colors.black.withOpacity(0.3),
//           ),
//           Center(
//             child: SingleChildScrollView(
//               child: Padding(
//                 padding: const EdgeInsets.all(24.0),
//                 child: Card(
//                   elevation: 10,
//                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//                   child: Padding(
//                     padding: const EdgeInsets.all(24.0),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         const Text(
//                           'Product Management System',
//                           style: TextStyle(
//                             fontSize: 26,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.deepPurple,
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         const Text(
//                           'Admin Login',
//                           style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
//                         ),
//                         const SizedBox(height: 20),
//                         TextField(
//                           controller: usernameController,
//                           decoration: const InputDecoration(
//                             labelText: 'Username',
//                             border: OutlineInputBorder(),
//                           ),
//                         ),
//                         const SizedBox(height: 15),
//                         TextField(
//                           controller: passwordController,
//                           obscureText: true,
//                           decoration: const InputDecoration(
//                             labelText: 'Password',
//                             border: OutlineInputBorder(),
//                           ),
//                         ),
//                         const SizedBox(height: 20),
//                         ElevatedButton(
//                           onPressed: () => login(context),
//                           child: const Text('Login'),
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.deepPurple,
//                             foregroundColor: Colors.white,
//                             padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }











import 'package:flutter/material.dart';
import 'dashboard_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void login(BuildContext context) {
    if (usernameController.text == 'admin' && passwordController.text == 'admin') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const DashboardPage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('❌ Invalid credentials')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.jpg'), // Image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Dark overlay
          Container(
            color: Colors.black.withOpacity(0.4),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Product Management System',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          offset: Offset(1, 1),
                          blurRadius: 4,
                          color: Colors.black54,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Card(
                    elevation: 10,
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Admin Login',
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 20),
                          TextField(
                            controller: usernameController,
                            decoration: const InputDecoration(
                              labelText: 'Username',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 15),
                          TextField(
                            controller: passwordController,
                            obscureText: true,
                            decoration: const InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () => login(context),
                            child: const Text('Login'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepPurple,
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
