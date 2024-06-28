import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  final String? selectedName;

  const ChatPage({super.key, required this.selectedName});

  @override
  // ignore: library_private_types_in_public_api
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  TextEditingController textController = TextEditingController();
  String queryText = "";
  String queryVoice = "";
  String queryImage = "";
  String queryVideo = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat with ${widget.selectedName}'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Chat with ${widget.selectedName}',
              style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // Text input field for text query
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
            // Voice query submission (you can implement voice recording here)
            ElevatedButton(
              onPressed: () {
                // Implement voice recording or selection logic
                setState(() {
                  queryVoice = "Voice query recorded/selected";
                });
              },
              child: const Text('Record/Select Voice Query'),
            ),
            const SizedBox(height: 20),
            // Image query submission (you can implement image selection here)
            ElevatedButton(
              onPressed: () {
                // Implement image selection logic
                setState(() {
                  queryImage = "Image query selected";
                });
              },
              child: const Text('Select Image Query'),
            ),
            const SizedBox(height: 20),
            // Video query submission (you can implement video selection here)
            ElevatedButton(
              onPressed: () {
                // Implement video selection logic
                setState(() {
                  queryVideo = "Video query selected";
                });
              },
              child: const Text('Select Video Query'),
            ),
            const SizedBox(height: 20),
            // Button to submit the query in any format
            ElevatedButton(
              onPressed: () {
                // Send the query to the expert using the selected format
                // ignore: unused_local_variable
                String queryToSend = "Text: $queryText\nVoice: $queryVoice\nImage: $queryImage\nVideo: $queryVideo";
                // Implement the logic to send the query to the expert
                // You can use queryToSend to send the combined query
              },
              child: const Text('Submit Query'),
            ),
          ],
        ),
      ),
    );
  }
}
