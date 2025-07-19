// import 'package:flutter/material.dart';

// class HelpPage extends StatelessWidget {
//   const HelpPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(title: const Text('Help')), body: const Center(child: Text('Help Page')));
//   }
// }







// import 'package:flutter/material.dart';

// class HelpPage extends StatelessWidget {
//   const HelpPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Help')),
//       body: Center(
//         child: Card(
//           elevation: 4,
//           margin: const EdgeInsets.all(24),
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//           child: const Padding(
//             padding: EdgeInsets.all(32.0),
//             child: Text('Help Page', style: TextStyle(fontSize: 18)),
//           ),
//         ),
//       ),
//     );
//   }
// }









// import 'package:flutter/material.dart';

// class HelpPage extends StatelessWidget {
//   const HelpPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Help'), backgroundColor: Colors.cyan),
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.cyan, Colors.cyanAccent],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: const Center(
//           child: Text(
//             'Help Page',
//             style: TextStyle(fontSize: 20, color: Colors.white),
//           ),
//         ),
//       ),
//     );
//   }
// }











import 'package:flutter/material.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  final TextEditingController messageController = TextEditingController();

  void sendMessage() {
    final message = messageController.text.trim();
    if (message.isNotEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('✅ Message sent successfully!')),
      );
      messageController.clear();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('⚠️ Please enter a message.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help'),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        padding: const EdgeInsets.all(24.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.cyan, Colors.cyanAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Need Help?',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              'Send us a message and we\'ll get back to you shortly.',
              style: TextStyle(fontSize: 18, color: Colors.white70),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            TextField(
              controller: messageController,
              maxLines: 6,
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: 'Type your message here...',
                hintStyle: const TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: sendMessage,
              icon: const Icon(Icons.send),
              label: const Text('Send Message'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
