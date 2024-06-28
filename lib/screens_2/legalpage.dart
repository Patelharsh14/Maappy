import 'dart:math';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LegalPage extends StatefulWidget {
  const LegalPage({Key? key}) : super(key: key);

  @override
  _LegalPageState createState() => _LegalPageState();
}

class _LegalPageState extends State<LegalPage> {
  List<Student> students = List.generate(20, (index) => Student(index));

  @override
  void initState() {
    super.initState();
    _loadStudentNames();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student List"),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];
          final TextEditingController controller =
              TextEditingController(text: student.name);

          return ListTile(
            title: TextField(
              onChanged: (newName) {
                student.name = newName;
              },
              decoration: InputDecoration(labelText: 'Student Name'),
              controller: controller,
            ),
            subtitle: Text('Location: ${getRandomLocation()}'),
            trailing: Checkbox(
              value: student.isSelected,
              onChanged: (value) {
                setState(() {
                  student.isSelected = value ?? false;
                });
              },
            ),
          );
        },
      ),
    );
  }

  String getRandomLocation() {
    List<String> locations = ['New York', 'Paris', 'Tokyo', 'London', 'Berlin'];
    return locations[Random().nextInt(locations.length)];
  }

  Future<void> _loadStudentNames() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      for (int i = 0; i < students.length; i++) {
        final key = 'student_$i';
        if (prefs.containsKey(key)) {
          students[i].name = prefs.getString(key) ?? students[i].name;
        }
      }
    });
  }

  Future<void> _saveStudentNames() async {
    final prefs = await SharedPreferences.getInstance();
    for (int i = 0; i < students.length; i++) {
      final key = 'student_$i';
      prefs.setString(key, students[i].name);
    }
  }

  @override
  void dispose() {
    _saveStudentNames(); // Save student names when the widget is disposed
    super.dispose();
  }
}

class Student {
  String name;
  bool isSelected;

  Student(int index)
      : name = 'Student ${index + 1}',
        isSelected = false;
}
