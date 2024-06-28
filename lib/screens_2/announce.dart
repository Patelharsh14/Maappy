import 'package:flutter/material.dart';

class AnnouncementsPage extends StatelessWidget {
  final List<String> defaultAnnouncements = [
    "Bus Has Changed Its Route.",
    "There Has Been An Emergency.",
    "Bus Will Arrive Half an Hour Late.",
    "Bus Number GJ38 T9666 has crossed speed limit",
    "Bus is now Running at 40KMPH.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Announcements"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: defaultAnnouncements.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 4.0,
              margin: EdgeInsets.symmetric(vertical: 8.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: ListTile(
                leading: Icon(Icons.warning, color: Colors.orange),
                title: Text(
                  defaultAnnouncements[index],
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
