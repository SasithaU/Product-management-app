





// import 'package:flutter/material.dart';
// import '../widgets/app_drawer.dart';

// class DashboardPage extends StatelessWidget {
//   const DashboardPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Dashboard'), backgroundColor: Colors.indigo),
//       drawer: const AppDrawer(),
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.indigo, Colors.indigoAccent],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: const Center(
//           child: Text(
//             'Welcome to Dashboard!',
//             style: TextStyle(fontSize: 22, color: Colors.white),
//           ),
//         ),
//       ),
//     );
//   }
// }












import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Colors.indigo,
      ),
      drawer: const AppDrawer(),
      body: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.indigo, Colors.indigoAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome Back!',
              style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Statistics Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                _DashboardCard(title: 'Products', count: 125, icon: Icons.inventory),
                _DashboardCard(title: 'Categories', count: 8, icon: Icons.category),
                _DashboardCard(title: 'Users', count: 5, icon: Icons.people),
              ],
            ),

            const SizedBox(height: 30),

            // Quick Action Button
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/add-product');
                },
                icon: const Icon(Icons.add),
                label: const Text('Add New Product'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Recent Activity Section
            const Text(
              'Recent Activity',
              style: TextStyle(fontSize: 20, color: Colors.white70, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10),
            const Expanded(
              child: _RecentActivityList(),
            ),
          ],
        ),
      ),
    );
  }
}

// Card Widget for displaying product stats
class _DashboardCard extends StatelessWidget {
  final String title;
  final int count;
  final IconData icon;

  const _DashboardCard({
    required this.title,
    required this.count,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white24,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        width: 100,
        height: 100,
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 32, color: Colors.white),
            const SizedBox(height: 8),
            Text('$count', style: const TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
            Text(title, style: const TextStyle(fontSize: 14, color: Colors.white70)),
          ],
        ),
      ),
    );
  }
}

// Dummy recent activity list
class _RecentActivityList extends StatelessWidget {
  const _RecentActivityList();

  @override
  Widget build(BuildContext context) {
    final List<String> activities = [
      'Added "T-shirt" to inventory',
      'Updated price for "Shoes"',
      'Deleted "Old Jacket"',
      'New user "staff2" created',
      'Added "Accessories" category',
    ];

    return ListView.builder(
      itemCount: activities.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.check_circle_outline, color: Colors.white),
          title: Text(
            activities[index],
            style: const TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }
}

