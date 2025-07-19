// import 'package:flutter/material.dart';
// import '../pages/dashboard_page.dart';
// import '../pages/add_product_page.dart';
// import '../pages/view_products_page.dart';
// import '../pages/about_page.dart';
// import '../pages/help_page.dart';
// import '../pages/checkout_page.dart';
// import '../pages/print_invoice_page.dart';
// import '../pages/add_user_page.dart';
// import '../pages/block_user_page.dart';
// import '../pages/login_page.dart';

// class AppDrawer extends StatelessWidget {
//   const AppDrawer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         children: [
//           const DrawerHeader(
//             child: Text('Menu', style: TextStyle(fontSize: 24)),
//           ),
//           ListTile(title: const Text('Dashboard'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const DashboardPage()))),
//           ListTile(title: const Text('Add Product'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const AddProductPage()))),
//           ListTile(title: const Text('View Products'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ViewProductsPage()))),
//           ListTile(title: const Text('About'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const AboutPage()))),
//           ListTile(title: const Text('Help'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const HelpPage()))),
//           // ListTile(title: const Text('Checkout'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const CheckoutPage()))),
//           ListTile(title: const Text('Print Invoice'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const PrintInvoicePage()))),
//           // ListTile(title: const Text('Add User'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const AddUserPage()))),
//           ListTile(title: const Text('Add User'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => AddUserPage()))),

//           // ListTile(title: const Text('Block User'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const BlockUserPage()))),
//           ListTile(title: const Text('Block User'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => BlockUserPage()))),

//           ListTile(title: const Text('Logout'), onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LoginPage()))),
//           // ListTile(title: const Text('Logout'), onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const LoginPage()))),

//         ],
//       ),
//     );
//   }
// }











import 'package:flutter/material.dart';
import '../pages/dashboard_page.dart';
import '../pages/add_product_page.dart';
import '../pages/view_products_page.dart';
import '../pages/about_page.dart';
import '../pages/help_page.dart';
import '../pages/checkout_page.dart';
import '../pages/print_invoice_page.dart';
import '../pages/add_user_page.dart';
import '../pages/block_user_page.dart';
import '../pages/login_page.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.grey[100],
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Drawer Header
            DrawerHeader(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.indigo, Colors.indigoAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Icon(Icons.menu, size: 40, color: Colors.white),
                  SizedBox(height: 10),
                  Text(
                    'Product Manager',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            _buildDrawerItem(context, Icons.dashboard, 'Dashboard', const DashboardPage()),
            _buildDrawerItem(context, Icons.add_box, 'Add Product', const AddProductPage()),
            _buildDrawerItem(context, Icons.view_list, 'View Products', const ViewProductsPage()),
            _buildDrawerItem(context, Icons.person_add, 'Add User', AddUserPage()),
            _buildDrawerItem(context, Icons.block, 'Block User', BlockUserPage()),

            const Divider(),
            _buildDrawerItem(context, Icons.print, 'Print Invoice', const PrintInvoicePage()),
            _buildDrawerItem(context, Icons.info_outline, 'About', const AboutPage()),
            _buildDrawerItem(context, Icons.help_outline, 'Help', const HelpPage()),

            const Divider(),
            _buildDrawerItem(context, Icons.logout, 'Logout', LoginPage(), replace: true),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem(BuildContext context, IconData icon, String title, Widget page, {bool replace = false}) {
    return ListTile(
      leading: Icon(icon, color: Colors.indigo),
      title: Text(title, style: const TextStyle(fontSize: 16)),
      onTap: () {
        Navigator.pop(context); // Close drawer
        if (replace) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => page));
        } else {
          Navigator.push(context, MaterialPageRoute(builder: (_) => page));
        }
      },
    );
  }
}
