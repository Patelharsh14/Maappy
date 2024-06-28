import 'package:MAAPPE/Queries/querymodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'chatstorage.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController(); // Controller for the number field
  TextEditingController textController = TextEditingController();
  String queryText = "";
  String queryVoice = "";
  String queryImage = "";
  String queryVideo = "";
  String userName = "";
  String userNumber = ""; // Store the user's phone number

  List<String> adminNames = [
    'Driver',
    'Parents',
  
  ];

  String selectedAdmin = 'Driver';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat with $selectedAdmin'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Chat with $selectedAdmin',
              style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            DropdownButton<String>(
              value: selectedAdmin,
              items: adminNames.map((admin) {
                return DropdownMenuItem<String>(
                  value: admin,
                  child: Text(admin),
                );
              }).toList(),
              onChanged: (admin) {
                setState(() {
                  selectedAdmin = admin!;
                });
              },
            ),
            const SizedBox(height: 20),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Enter your name'),
              onChanged: (text) {
                setState(() {
                  userName = text;
                });
              },
            ),
            const SizedBox(height: 20),
            TextField(
              controller: numberController, // Phone number field
              decoration: const InputDecoration(labelText: 'Enter your number'),
              onChanged: (text) {
                setState(() {
                  userNumber = text; // Store the user's phone number
                });
              },
            ),
            const SizedBox(height: 20),
            TextField(
              controller: textController,
              decoration: const InputDecoration(labelText: 'Type your query (text)'),
              onChanged: (text) {
                setState(() {
                  queryText = text;
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (userName.isEmpty || userNumber.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Please enter your name and number.'),
                    ),
                  );
                } else {
                  String queryToSend =
                      "Name: $userName\nNumber: $userNumber\nText: $queryText\nVoice: $queryVoice\nImage: $queryImage\nVideo: $queryVideo";
                  context.read<QueryModel>().addQuery(queryToSend);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('The query is submitted'),
                    ),
                  );
                }
              },
              child: const Text('Submit Query'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ChatStoragePage(selectedName: selectedAdmin),
                  ),
                );
              },
              child: const Text('View Submitted Queries'),
            ),
          ],
        ),
      ),
    );
  }
}
