import 'package:IQRAA/components/to_arabic_no_converter.dart';
import 'package:flutter/material.dart';

class TasbeehPage extends StatefulWidget {
  const TasbeehPage({super.key, required this.title});
  final String title;

  @override
  State<TasbeehPage> createState() => _TasbeehPage();
}

class _TasbeehPage extends State<TasbeehPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 56, 115, 59),
        title: Text(widget.title),
        centerTitle: true,
        titleTextStyle:
            TextStyle(fontSize: 32, fontWeight: FontWeight.bold, shadows: [
          Shadow(
            offset: Offset(1, 1),
            blurRadius: 2.0,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ]),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton.small(
              onPressed: _reset,
              tooltip: 'Increment',
              child: const Icon(Icons.restart_alt),
            ),
            SizedBox(
              height: 20,
            ),
            FloatingActionButton.large(
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              child: const Text(
                "تسبيح",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'quran',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '$_counter',
              style: TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.bold,
                fontFamily: 'quran',
              ),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
