import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 1;
  String _text = "";
  int _cek = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      if(_counter>24){
        _counter=1;
      }

      // Percobaan 2
      // if(_counter%2 == 0){
      //   _text = "Genap";
      // } else{
      //   _text = "Ganjil";
      // }

      // Percobaan 3
      // _text = "Ganjil : ";
      // for(int i=0; i<=_counter; i++){
      //   if( i%2 != 0){
      //     _text += '${i}, ';
      //   }
      // }

      // Latihan Kelipatan 3
      // _text = "Genap Kelipatan 3 : ";
      // for(int i=1; i<=_counter; i++) {
      //   if (i%2 == 0 && i%3 == 0) {
      //     _text += "$i, ";
      //   }
      // }

      // Bilangan prima
      _text = "Prima: ";
      for(int i=1; i<=_counter; i++) {
        _cek = 0;
        for (int j=1; j<=i; j++) {
          if (i % j == 0) {
            _cek += 1;
          }
        }
        if (_cek == 2) {
          _text += "$i, ";
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Kamu menekan tombol berapa kali:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              _text,
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

