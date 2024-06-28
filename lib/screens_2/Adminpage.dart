import 'package:MAAPPE/screens_2/track.dart';
import 'package:flutter/material.dart';

//import 'package:nyay_1/Queries/chatstorage.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void signInAdmin() {
    const adminEmail = 'admin@gmail.com';
    const adminPassword = 'admin123';

    String email = emailController.text;
    String password = passwordController.text;

    if (email == adminEmail && password == adminPassword) {
      // Successful login
      // Navigate to the admin dashboard or perform actions accordingly
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => TrackPage(), // You can customize this
        ),
      );
    } else {
      // Invalid credentials, show an error message or handle accordingly
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
              'Invalid credentials. Please check your email and password.'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Page'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Welcome to the Admin Page!',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20.0),
              // Text fields for email and password input
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10.0),
              TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true, // Hide the password input
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  padding:
                      MaterialStateProperty.all(const EdgeInsets.all(16.0)),
                ),
                onPressed: signInAdmin, // Call the signInAdmin function
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
