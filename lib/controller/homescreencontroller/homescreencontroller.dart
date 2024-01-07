import 'package:flutter/material.dart';

class homescreenController with ChangeNotifier {
  Set<int> likedIndexes = {};

  void toggleLikedState({required int index}) {
    if (likedIndexes.contains(index)) {
      likedIndexes.remove(index);
    } else {
      likedIndexes.add(index);
    }
    notifyListeners();
  }

  bool isLiked(int index) {
    return likedIndexes.contains(index);
  }
}
