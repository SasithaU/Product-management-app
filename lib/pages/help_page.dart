




// import 'package:flutter/material.dart';

// class HelpPage extends StatefulWidget {
//   const HelpPage({super.key});

//   @override
//   State<HelpPage> createState() => _HelpPageState();
// }

// class _HelpPageState extends State<HelpPage> {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController messageController = TextEditingController();

//   void sendMessage() {
//     final email = emailController.text.trim();
//     final message = messageController.text.trim();

//     if (email.isEmpty || message.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('⚠️ Please fill in both email and message.')),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('✅ Message sent successfully!')),
//       );
//       emailController.clear();
//       messageController.clear();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Help'),
//         backgroundColor: Colors.cyan,
//       ),
//       body: Container(
//         padding: const EdgeInsets.all(24.0),
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.cyan, Colors.cyanAccent],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               const Text(
//                 'Need Help?',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(height: 16),
//               const Text(
//                 'Send us a message and we\'ll get back to you shortly.',
//                 style: TextStyle(fontSize: 18, color: Colors.white70),
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(height: 24),

//               // 👇 Email Field
//               TextField(
//                 controller: emailController,
//                 keyboardType: TextInputType.emailAddress,
//                 style: const TextStyle(color: Colors.black),
//                 decoration: InputDecoration(
//                   hintText: 'Enter your email address',
//                   hintStyle: const TextStyle(color: Colors.grey),
//                   filled: true,
//                   fillColor: Colors.white,
//                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
//                 ),
//               ),
//               const SizedBox(height: 16),

//               // 👇 Message Field
//               TextField(
//                 controller: messageController,
//                 maxLines: 6,
//                 style: const TextStyle(color: Colors.black),
//                 decoration: InputDecoration(
//                   hintText: 'Type your message here...',
//                   hintStyle: const TextStyle(color: Colors.grey),
//                   filled: true,
//                   fillColor: Colors.white,
//                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
//                 ),
//               ),
//               const SizedBox(height: 20),

//               // 👇 Send Button
//               ElevatedButton.icon(
//                 onPressed: sendMessage,
//                 icon: const Icon(Icons.send),
//                 label: const Text('Send Message'),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.teal,
//                   foregroundColor: Colors.white,
//                   padding: const EdgeInsets.symmetric(vertical: 16),
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

// class HelpPage extends StatefulWidget {
//   const HelpPage({super.key});

//   @override
//   State<HelpPage> createState() => _HelpPageState();
// }

// class _HelpPageState extends State<HelpPage> {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController messageController = TextEditingController();

//   void sendMessage() {
//     final email = emailController.text.trim();
//     final message = messageController.text.trim();

//     if (email.isEmpty || message.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('⚠️ Please fill in both email and message.')),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('✅ Message sent successfully!')),
//       );
//       emailController.clear();
//       messageController.clear();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Help'),
//         backgroundColor: Colors.cyan,
//       ),
//       body: LayoutBuilder(
//         builder: (context, constraints) {
//           return Container(
//             width: double.infinity,
//             height: constraints.maxHeight,
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [Colors.cyan, Colors.cyanAccent],
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//               ),
//             ),
//             child: SingleChildScrollView(
//               child: ConstrainedBox(
//                 constraints: BoxConstraints(minHeight: constraints.maxHeight),
//                 child: IntrinsicHeight(
//                   child: Padding(
//                     padding: const EdgeInsets.all(24.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       children: [
//                         const Text(
//                           'Need Help?',
//                           style: TextStyle(
//                             fontSize: 24,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                         const SizedBox(height: 16),
//                         const Text(
//                           'Send us a message and we\'ll get back to you shortly.',
//                           style: TextStyle(fontSize: 18, color: Colors.white70),
//                           textAlign: TextAlign.center,
//                         ),
//                         const SizedBox(height: 24),

//                         // Email field
//                         TextField(
//                           controller: emailController,
//                           keyboardType: TextInputType.emailAddress,
//                           style: const TextStyle(color: Colors.black),
//                           decoration: InputDecoration(
//                             hintText: 'Enter your email address',
//                             hintStyle: const TextStyle(color: Colors.grey),
//                             filled: true,
//                             fillColor: Colors.white,
//                             border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
//                           ),
//                         ),
//                         const SizedBox(height: 16),

//                         // Message field
//                         TextField(
//                           controller: messageController,
//                           maxLines: 6,
//                           style: const TextStyle(color: Colors.black),
//                           decoration: InputDecoration(
//                             hintText: 'Type your message here...',
//                             hintStyle: const TextStyle(color: Colors.grey),
//                             filled: true,
//                             fillColor: Colors.white,
//                             border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
//                           ),
//                         ),
//                         const SizedBox(height: 20),

//                         // Send button
//                         ElevatedButton.icon(
//                           onPressed: sendMessage,
//                           icon: const Icon(Icons.send),
//                           label: const Text('Send Message'),
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.teal,
//                             foregroundColor: Colors.white,
//                             padding: const EdgeInsets.symmetric(vertical: 16),
//                           ),
//                         ),

//                         const Spacer(), // Pushes content to the top
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           );
//         },
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
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  void sendMessage() {
    final email = emailController.text.trim();
    final message = messageController.text.trim();

    if (email.isEmpty || message.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('⚠️ Please fill in both email and message.')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('✅ Message sent successfully!')),
      );
      emailController.clear();
      messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help'),
        backgroundColor: Colors.indigo,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            width: double.infinity,
            height: constraints.maxHeight,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.indigo, Colors.indigoAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
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

                        // Email field
                        TextField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            hintText: 'Enter your email address',
                            hintStyle: const TextStyle(color: Colors.grey),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                          ),
                        ),
                        const SizedBox(height: 16),

                        // Message field
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

                        // Send button
                        ElevatedButton.icon(
                          onPressed: sendMessage,
                          icon: const Icon(Icons.send),
                          label: const Text('Send Message'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                          ),
                        ),

                        const Spacer(), // Pushes content to the top
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}