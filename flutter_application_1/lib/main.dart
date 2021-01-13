import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final twoWords = WordPair.random();
    return MaterialApp(
      title: "Welcome to my Flutter-Tester!!",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Welcome to Pascal's Flutter"),
        ),
        body: Center(
          child: Text(twoWords.asPascalCase),
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final twoMoreWords = WordPair.random();
    return Text(twoMoreWords.asPascalCase);
  }
}
