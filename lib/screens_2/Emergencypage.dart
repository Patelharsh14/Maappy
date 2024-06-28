// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names, override_on_non_overriding_member

import 'package:flutter/material.dart';
final List<Map<String, String>> legalContacts = [
    {
      'name': 'Police Emergency (All India)',
      'number': '100',
    },
    {
      'name': 'Fire Emergency',
      'number': '101',
    },
    {
      'name': 'Ambulance',
      'number': '102',
    },
    {
      'name': 'Women Helpline (All India)',
      'number': '1091',
    },
    {
      'name': 'Child Helpline',
      'number': '1098',
    },
    {
      'name': 'Senior Citizens Helpline',
      'number': '1291',
    },
  ];
  class EmergencyPage extends StatefulWidget {
  const EmergencyPage({ Key? key }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _EmergencyPageState createState() => _EmergencyPageState();
}

class _EmergencyPageState extends State<EmergencyPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emergency Legal Contacts'),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'In case of emergencies, you can contact the following legal helpline numbers:',
              style: TextStyle(
                fontSize: 20,  // Increased font size
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: legalContacts.length,
              itemBuilder: (context, index) {
                final contact = legalContacts[index];
                return ListTile(
                  title: Text(contact['name'] ?? ''),
                  subtitle: Text(
                    'Contact Number: ${contact['number'] ?? ''}',
                    style: const TextStyle(
                      fontSize: 20,  // Increased font size
                    ),
                  ),
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }

}