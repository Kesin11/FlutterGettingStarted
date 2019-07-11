import 'package:english_words/english_words.dart';

class FavoriteModel {
  final _saved = Set<WordPair>();

  List<WordPair> toList() {
    return _saved.toList();
  }

  bool isAlreadyAdded(pair) {
    return _saved.contains(pair);
  }

  void add(WordPair pair) {
    _saved.add(pair);
  }

  void remove(pair) {
    _saved.remove(pair);
  }

  void toggle(pair) {
    if (isAlreadyAdded(pair)) {
      remove(pair);
    } else {
      add(pair);
    }
  }
}
