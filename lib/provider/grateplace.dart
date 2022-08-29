import 'dart:io';

import 'package:flutter/foundation.dart';
import '../model/place.dart';

class GreatPlace with ChangeNotifier {
  List<Place> _listItem = [];
  List<Place> get item {
    return _listItem;
  }

  void addPlace(String titles, File image) {
    final placeAdd = Place(
        id: DateTime.now().toString(),
        title: titles,
        location: null,
        image: image);
    _listItem.add(placeAdd);
    notifyListeners();
  }
}
