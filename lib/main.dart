import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter medizin demo',
      theme: ThemeData(

        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white
      ),
      home: const MyHomePage(title: 'Datenbank für Venetrinärmedizin'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Container(
        alignment: Alignment.bottomCenter,
        child: ElevatedButton(
            onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("REFRESH"),
              Icon(Icons.refresh)
            ],
          )
        )
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
