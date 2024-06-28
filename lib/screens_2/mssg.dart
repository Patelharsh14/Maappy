import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MessagesFromParentsPage extends StatefulWidget {
  final List<String> messages;

  MessagesFromParentsPage({required this.messages});

  @override
  _MessagesFromParentsPageState createState() => _MessagesFromParentsPageState();
}

class _MessagesFromParentsPageState extends State<MessagesFromParentsPage> {
  @override
  void initState() {
    super.initState();
    print("Received messages: ${widget.messages.length}");
  }

  void _clearMessages() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('messages');

    // Update the UI with an empty list
    setState(() {
      widget.messages.clear();
    });

    // Show a Snackbar to indicate that messages have been cleared
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Messages Cleared'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Messages from Parents"),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(widget.messages[index]),
                );
              },
            ),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: _clearMessages,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red), // You can change the color
            ),
            child: Text(
              'Clear Messages',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
