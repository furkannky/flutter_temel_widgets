import 'package:flutter/material.dart';

class DropDownButtonKullanimi extends StatefulWidget {
  const DropDownButtonKullanimi({super.key});

  @override
  State<DropDownButtonKullanimi> createState() =>
      _DropDownButtonKullanimiState();
}

class _DropDownButtonKullanimiState extends State<DropDownButtonKullanimi> {
  String? _secilenSehir = null;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        hint: const Text(
          'şehir seciniz',
          style: TextStyle(color: Colors.amber),
        ),
        icon: Icon(Icons.account_balance_sharp),
        style: const TextStyle(
            color: Colors.amber,
            backgroundColor: Color.fromARGB(255, 3, 71, 127)),
        items: const [
          DropdownMenuItem(child: Text('Ankara Şehri'), value: 'ankara'),
          DropdownMenuItem(child: Text('İstanbul Şehri'), value: 'istanbul'),
          DropdownMenuItem(child: Text('İzmir Şehri'), value: 'izmir'),
        ],
        value: _secilenSehir,
        onChanged: (String? yeni) => {
          setState(() {
            print('çalıştı $yeni');
            _secilenSehir = yeni;
          }),
        },
      ),
    );
  }
}
