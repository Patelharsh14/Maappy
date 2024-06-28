
import 'package:MAAPPE/screens_2/Newspage.dart';
import 'package:MAAPPE/screens_2/sendmssg.dart';
import 'package:flutter/material.dart';

class TrackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Track Page'),
        backgroundColor: Colors.orange,
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: ListTile(
                    title: Text('Send Message'),
                    onTap: () {
                      Navigator.pop(context); // Close the menu
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SendMessagePage(),
                        ),
                      );
                    },
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Track your Bus',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                hintText: 'Enter Unique ID',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Navigate to MapPage when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => newspage()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orange),
                padding: MaterialStateProperty.all(const EdgeInsets.all(16.0)),
              ),
              child: Text(
                'Track Now',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            ),
          ),
          Column(
            children: List.generate(2, (index) {
              return ListTile(
                leading: Icon(Icons.person),
                title: Text('Student ${index + 1}'),
                subtitle: Text('Date: ${DateTime.now().toString()}'),
              );
            }),
          ),
        ],
      ),
    );
  }
}