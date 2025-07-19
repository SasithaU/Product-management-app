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
      child: ListView(
        children: [
          const DrawerHeader(
            child: Text('Menu', style: TextStyle(fontSize: 24)),
          ),
          ListTile(title: const Text('Dashboard'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const DashboardPage()))),
          ListTile(title: const Text('Add Product'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const AddProductPage()))),
          ListTile(title: const Text('View Products'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ViewProductsPage()))),
          ListTile(title: const Text('About'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const AboutPage()))),
          ListTile(title: const Text('Help'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const HelpPage()))),
          // ListTile(title: const Text('Checkout'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const CheckoutPage()))),
          ListTile(title: const Text('Print Invoice'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const PrintInvoicePage()))),
          // ListTile(title: const Text('Add User'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const AddUserPage()))),
          ListTile(title: const Text('Add User'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => AddUserPage()))),

          // ListTile(title: const Text('Block User'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const BlockUserPage()))),
          ListTile(title: const Text('Block User'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => BlockUserPage()))),

          ListTile(title: const Text('Logout'), onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LoginPage()))),
          // ListTile(title: const Text('Logout'), onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const LoginPage()))),

        ],
      ),
    );
  }
}