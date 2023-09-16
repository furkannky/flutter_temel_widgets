import 'package:flutter/material.dart';

class DropDownButtonKullanimi extends StatefulWidget {
  const DropDownButtonKullanimi({super.key});

  @override
  State<DropDownButtonKullanimi> createState() =>
      _DropDownButtonKullanimiState();
}

class _DropDownButtonKullanimiState extends State<DropDownButtonKullanimi> {
  String? _secilenSehir = null;
  List<String> _tumSehirler = ['Ankara', 'Bursa', 'Istanbul', 'Izmir', 'van', 'adıyaman', 'muş', 'batman', 'adana'];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        hint: const Text(
          'şehir seciniz',
          style: TextStyle(color: Colors.amber),
        ),
        icon: const Icon(Icons.arrow_downward),
        iconSize: 24,
        underline: Container(
          height: 4,
          color: Colors.purple,
        ),
        style: const TextStyle(
            color: Colors.amber,
            backgroundColor: Color.fromARGB(255, 3, 71, 127)),
        /*  items: const [
          DropdownMenuItem(child:  Text('Ankara Şehri'), value: 'ankara'),
          DropdownMenuItem(child: Text('İstanbul Şehri'), value: 'istanbul'),
          DropdownMenuItem(child: Text('İzmir Şehri'), value: 'izmir'),
        ], */
        items: _tumSehirler.map((String oanAnkiSehir) => DropdownMenuItem(
              child:  Text(oanAnkiSehir),
              value: oanAnkiSehir,
            )).toList(),
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
