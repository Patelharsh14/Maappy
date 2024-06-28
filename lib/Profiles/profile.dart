import 'dart:io';
import 'package:MAAPPE/Profiles/edit.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late TextEditingController nameController;
  late TextEditingController phoneController;
  late TextEditingController emailController;

  File? _userPhoto; // Nullable
  final picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    phoneController = TextEditingController();
    emailController = TextEditingController();
    // Load user details from SharedPreferences when the screen is initialized
    loadUserDetails();
  }

  Future<void> loadUserDetails() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      nameController.text = prefs.getString('name') ?? '';
      phoneController.text = prefs.getString('phone') ?? '';
      emailController.text = prefs.getString('email') ?? '';
      final String? imagePath = prefs.getString('userPhoto');
      _userPhoto = imagePath != null ? File(imagePath) : null;
    });
  }

  Future<void> saveUserDetails() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('name', nameController.text);
    prefs.setString('phone', phoneController.text);
    prefs.setString('email', emailController.text);
    if (_userPhoto != null) {
      prefs.setString('userPhoto', _userPhoto!.path);
    }
  }

  Future<void> _pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _userPhoto = File(pickedFile.path);
        saveUserDetails(); // Save the user photo immediately
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () async {
              // Navigate to the EditDetailsPage
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditDetailsPage(),
                ),
              );
              // Reload user details when returning from EditDetailsPage
              await loadUserDetails();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: _pickImage,
              child: Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.deepOrange,
                  child: _userPhoto != null
                      ? ClipOval(
                          child: Image.file(
                            _userPhoto!,
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        )
                      : const Icon(
                          Icons.person,
                          size: 60,
                          color: Colors.white,
                        ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            _buildTextField('Name', nameController),
            const SizedBox(height: 16),
            _buildTextField('Phone Number', phoneController),
            const SizedBox(height: 16),
            _buildTextField('Email', emailController),
            const SizedBox(height: 20),
            
            ElevatedButton(
              onPressed: () {
                // Implement the log out logic here
                // This can include signing the user out, clearing their data, and navigating to the login screen.
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('Log Out'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.deepOrange),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          style: TextStyle(fontSize: 16),
          readOnly: true, // Set to true to make the text field non-editable
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ],
    );
  }
}
