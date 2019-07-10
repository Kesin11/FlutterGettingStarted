import 'package:flutter/material.dart';
import 'components/random_words_state.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup name Generator',
      theme: ThemeData(primaryColor: Colors.orangeAccent),
      home: RandomWords(),
    );
  }
}
