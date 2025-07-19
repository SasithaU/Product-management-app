// import 'package:flutter/material.dart';

// class AddUserPage extends StatelessWidget {
//   const AddUserPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(title: const Text('Add User')), body: const Center(child: Text('Add User - Interface Only')));
//   }
// }





// import 'package:flutter/material.dart';

// class AddUserPage extends StatelessWidget {
//   const AddUserPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Add User')),
//       body: Center(
//         child: Card(
//           elevation: 5,
//           margin: const EdgeInsets.all(24),
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//           child: const Padding(
//             padding: EdgeInsets.all(32.0),
//             child: Text('Add User - Interface Only', style: TextStyle(fontSize: 18)),
//           ),
//         ),
//       ),
//     );
//   }
// }







// import 'package:flutter/material.dart';

// class AddUserPage extends StatelessWidget {
//   const AddUserPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Add User'), backgroundColor: Colors.orange),
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.orange, Colors.deepOrangeAccent],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: const Center(
//           child: Text(
//             'Add User - Interface Only',
//             style: TextStyle(fontSize: 20, color: Colors.white),
//           ),
//         ),
//       ),
//     );
//   }
// }









import 'package:flutter/material.dart';
import '../models/user.dart';
import 'block_user_page.dart';

class AddUserPage extends StatefulWidget {
  static List<User> userList = [];

  @override
  State<AddUserPage> createState() => _AddUserPageState();
}

class _AddUserPageState extends State<AddUserPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String selectedRole = 'Admin';

  void addUser() {
    if (nameController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill in all fields')),
      );
      return;
    }

    final newUser = User(
      name: nameController.text,
      email: emailController.text,
      password: passwordController.text,
      role: selectedRole,
    );

    setState(() {
      AddUserPage.userList.add(newUser);
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('User added successfully!')),
    );

    nameController.clear();
    emailController.clear();
    passwordController.clear();
    setState(() => selectedRole = 'Admin');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add User")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: nameController, decoration: const InputDecoration(labelText: 'Name')),
            TextField(controller: emailController, decoration: const InputDecoration(labelText: 'Email')),
            TextField(controller: passwordController, obscureText: true, decoration: const InputDecoration(labelText: 'Password')),
            DropdownButton<String>(
              value: selectedRole,
              items: const ['Admin', 'User'].map((role) {
                return DropdownMenuItem(value: role, child: Text(role));
              }).toList(),
              onChanged: (value) => setState(() => selectedRole = value!),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: addUser, child: const Text("Add User")),
          ],
        ),
      ),
    );
  }
}













// import 'package:flutter/material.dart';
// import 'package:hive/hive.dart';
// import '../models/user.dart';

// class AddUserPage extends StatefulWidget {
//   const AddUserPage({super.key});

//   @override
//   State<AddUserPage> createState() => _AddUserPageState();
// }

// class _AddUserPageState extends State<AddUserPage> {
//   final nameController = TextEditingController();
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//   String selectedRole = 'Admin';

//   void addUser() async {
//     if (nameController.text.isEmpty ||
//         emailController.text.isEmpty ||
//         passwordController.text.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Please fill in all fields')),
//       );
//       return;
//     }

//     final user = User(
//       name: nameController.text,
//       email: emailController.text,
//       password: passwordController.text,
//       role: selectedRole,
//     );

//     final box = Hive.box<User>('users');
//     await box.add(user);

//     ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(content: Text('User added successfully!')),
//     );

//     nameController.clear();
//     emailController.clear();
//     passwordController.clear();
//     setState(() => selectedRole = 'Admin');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Add User")),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             TextField(controller: nameController, decoration: const InputDecoration(labelText: 'Name')),
//             TextField(controller: emailController, decoration: const InputDecoration(labelText: 'Email')),
//             TextField(controller: passwordController, obscureText: true, decoration: const InputDecoration(labelText: 'Password')),
//             DropdownButton<String>(
//               value: selectedRole,
//               items: const ['Admin', 'User'].map((role) {
//                 return DropdownMenuItem(value: role, child: Text(role));
//               }).toList(),
//               onChanged: (value) => setState(() => selectedRole = value!),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(onPressed: addUser, child: const Text("Add User")),
//           ],
//         ),
//       ),
//     );
//   }
// }
