import 'package:flutter/material.dart';
import 'chatstorage.dart';

class AdminLoginPage extends StatefulWidget {
  @override
  _AdminLoginPageState createState() => _AdminLoginPageState();
}

class _AdminLoginPageState extends State<AdminLoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> signInAdmin() async {
    // You can hardcode the admin credentials here for simplicity.
    const adminEmail = 'admin@gmail.com';
    const adminPassword = 'admin123';

    if (emailController.text == adminEmail && passwordController.text == adminPassword) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => ChatStoragePage(selectedName: 'Admin 1'), // You can customize this
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Authentication failed. Please check your credentials.'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: signInAdmin,
              child: Text('Login as Admin'),
            ),
          ],
        ),
      ),
    );
  }
}
