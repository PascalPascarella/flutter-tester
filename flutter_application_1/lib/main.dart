import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Welcome to my Flutter-Tester!!",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Welcome to Pascal's Flutter"),
        ),
        body: Center(
          child: RandomWords(),
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
  final List<WordPair> _suggestions = <WordPair>[];
  final TextStyle _biggerFont = const TextStyle(fontSize: 18);
  @override
  Widget build(BuildContext context) {
    final twoMoreWords = WordPair.random();
    return Text(twoMoreWords.asPascalCase);
  }
  Widget _buildSuggestions() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemBuilder: (BuildContext _context, int i) {
        if (i.isOdd) {
          return Divider();
        }
        final int index = i ~/2;
        if (index >= _suggestions.length) {
         _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    )
  }
}
