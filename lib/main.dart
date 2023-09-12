import 'package:flutter/material.dart';
import 'package:flutter_temel_widgets/image_widgets.dart';

void main() {
  debugPrint("main metodu çalıştı");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint(" MyApp build  çalıştı");

    return MaterialApp(
      title: 'My Counter App',
      theme: ThemeData(
          primarySwatch: Colors.brown,
          textTheme: const TextTheme(
              headline1: TextStyle(
                  color: Colors.purple, fontWeight: FontWeight.bold))),
      home: Scaffold(
          appBar: AppBar(
        title: Text('image ornekleri'),
      ),
      body: ImageOrnekleri(),
      ),
    );
  }
}
