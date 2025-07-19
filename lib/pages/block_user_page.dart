


// import 'package:flutter/material.dart';

// class BlockUserPage extends StatelessWidget {
//   const BlockUserPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Block User'), backgroundColor: Colors.red),
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.redAccent, Colors.red],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: const Center(
//           child: Text(
//             'Block User - Interface Only',
//             style: TextStyle(fontSize: 20, color: Colors.white),
//           ),
//         ),
//       ),
//     );
//   }
// }









import 'package:flutter/material.dart';
import '../models/user.dart';
import 'add_user_page.dart';

class BlockUserPage extends StatefulWidget {
  @override
  State<BlockUserPage> createState() => _BlockUserPageState();
}

class _BlockUserPageState extends State<BlockUserPage> {
  void toggleBlock(User user) {
    setState(() {
      user.isBlocked = !user.isBlocked;
    });
  }

  @override
  Widget build(BuildContext context) {
    final users = AddUserPage.userList;

    return Scaffold(
      appBar: AppBar(title: const Text("Block Users")),
      body: users.isEmpty
          ? const Center(child: Text('No users added yet.'))
          : ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return Card(
                  color: user.isBlocked ? Colors.red[100] : Colors.green[100],
                  margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                  child: ListTile(
                    title: Text(user.name),
                    subtitle: Text('${user.email} • ${user.role}'),
                    trailing: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: user.isBlocked ? Colors.green : Colors.red,
                      ),
                      onPressed: () => toggleBlock(user),
                      child: Text(user.isBlocked ? "Unblock" : "Block"),
                    ),
                  ),
                );
              },
            ),
    );
  }
}

