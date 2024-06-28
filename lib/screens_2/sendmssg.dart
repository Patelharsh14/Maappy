import 'package:MAAPPE/screens_2/mssg.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SendMessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController messageController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Send Message'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: messageController, // Use a TextEditingController
              decoration: InputDecoration(
                labelText: 'Type your message',
                border: OutlineInputBorder(),
              ),
              maxLines: null,
              keyboardType: TextInputType.multiline,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () async {
                // Add logic to send the message
                String message = messageController.text; // Retrieve the entered text

                if (message.isNotEmpty) {
                  // Save the message using SharedPreferences
                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  List<String> savedMessages = prefs.getStringList('messages') ?? [];
                  savedMessages.add(message);
                  prefs.setStringList('messages', savedMessages);

                  // Show a snackbar
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Message Sent'),
                      duration: Duration(seconds: 2),
                    ),
                  );

                  // Navigate to MessagesFromParentsPage with the updated messages
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MessagesFromParentsPage(messages: savedMessages),
                    ),
                  );
                }
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orange),
                padding: MaterialStateProperty.all(const EdgeInsets.all(16.0)),
              ),
              child: Text(
                'Send',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
