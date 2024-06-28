import 'package:MAAPPE/screens_2/announce.dart';
import 'package:MAAPPE/screens_2/mssg.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildListItem(
            title: "Announcements",
            icon: Icons.announcement,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AnnouncementsPage()),
              );
            },
          ),
          _buildListItem(
            title: "Messages from Parents",
            icon: Icons.message,
            onTap: () async {
              // Fetch the actual messages from wherever they are stored
              // For example, you can use SharedPreferences to retrieve messages
              SharedPreferences prefs = await SharedPreferences.getInstance();
              List<String> messages = prefs.getStringList('messages') ?? [];

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MessagesFromParentsPage(messages: messages)),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildListItem({
    required String title,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(16.0),
        leading: Icon(
          icon,
          size: 32.0,
          color: Colors.orange,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
