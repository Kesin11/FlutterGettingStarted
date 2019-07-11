import 'package:english_words/english_words.dart';
import 'package:flutter/foundation.dart';
import 'package:test/test.dart';
import 'package:myapp/model/favorite.dart';

void main() {
  group('FavoriteModel', () {
    FavoriteModel model;

    setUp(() {
      model = FavoriteModel();
    });

    test('add', () {
      final pair = WordPair('first', 'second');
      model.add(pair);

      expect(model.toList().first, pair);
    });

    test('remove', () {
      final pair1 = WordPair('first', 'second');
      final pair2 = WordPair('foo', 'bar');
      model.add(pair1);
      model.add(pair2);

      model.remove(pair1);

      expect(model.toList().first, pair2);
    });

    test('toList', () {
      final pair1 = WordPair('first', 'second');
      model.add(pair1);

      listEquals(model.toList(), [pair1]);
    });

    group('toggle', () {
      test('1 time', () {
        final pair = WordPair('first', 'second');
        model.toggle(pair);

        expect(model.toList(), [pair]);
      });

      test('2 time', () {
        final pair = WordPair('first', 'second');
        model.toggle(pair);
        model.toggle(pair);

        expect(model.toList(), isEmpty);
      });
    });
  });
}