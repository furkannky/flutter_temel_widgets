import 'package:flutter/material.dart';

class MyCounterPage extends StatefulWidget {
  const MyCounterPage({super.key});

  @override
  State<MyCounterPage> createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
  int _sayac = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint(" MyHomePage build  çalıştı");
    return Scaffold(
      appBar: AppBar(title: const Text('My Counter AppBar')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const MyNewTextWidget(),
          Text(
            _sayac.toString(),
            style: Theme.of(context).textTheme.headline1,
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("buton tıklandı ve sayac degeri $_sayac");
          sayaciArttir();
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void sayaciArttir() {
    setState(() {});
    _sayac++;
  }
}
class MyNewTextWidget extends StatelessWidget {
  const MyNewTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "buttona basılma miktari",
      style: TextStyle(fontSize: 24),
    );
  }
}