import 'package:MAAPPE/Queries/querymodel.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';


class ChatStoragePage extends StatelessWidget {
  final String selectedName;

  ChatStoragePage({Key? key, required this.selectedName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final queryModel = context.watch<QueryModel>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Storage'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Chat Submitted ',
              style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'Stored Queries:',
              style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: queryModel.storedQueries.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(queryModel.storedQueries[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
