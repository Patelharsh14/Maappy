// ignore: file_names
// ignore: file_names
// ignore_for_file: camel_case_types, file_names, duplicate_ignore

import 'package:flutter/material.dart';

class newspage extends StatelessWidget {
  final double latitude = 24.1731;
  final double longitude = 72.4314;

  const newspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Map Page"),
        backgroundColor: Colors.orange,
      ),
      // //body: WebView(
      //   initialUrl: 'https://www.openstreetmap.org/#map=12/$latitude/$longitude',
      //   javascriptMode: JavascriptMode.unrestricted,
      // ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: newspage(),
  ));
}
