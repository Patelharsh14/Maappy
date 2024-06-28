
import 'package:flutter/foundation.dart';

class QueryModel extends ChangeNotifier {
  List<String> storedQueries = [];

  void addQuery(String query) {
    storedQueries.add(query);
    notifyListeners();
  }
}
