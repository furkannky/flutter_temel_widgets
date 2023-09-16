import 'package:flutter/material.dart';

class PopupMenuKullanimi extends StatefulWidget {
  const PopupMenuKullanimi({super.key});

  @override
  State<PopupMenuKullanimi> createState() => _PopupMenuKullanimiState();
}

class _PopupMenuKullanimiState extends State<PopupMenuKullanimi> {
  String _secilenSehir = 'sehir seciniz';
  List<String> renkler = ['sari', 'mavi','kırmızı', 'yeşil','siyah'];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<String>(
        onSelected:(String Sehir) {
          print('secilen sehir: $Sehir');
          setState(() {
          _secilenSehir = Sehir;
            
          });
        }, 
       // child: Text(_secilenSehir),
        itemBuilder: (context) {
     /*      return <PopupMenuEntry<String>>[
            const PopupMenuItem(
              child: Text('Ankara'),
              value: 'Ankara',
            ),
            const PopupMenuItem(
              child: Text('Bursa'),
              value: 'Bursa',
            ),
            const PopupMenuItem(
              child: Text('Van '),
              value: 'Van ',
            ),
          ]; */

          return renkler.map((String renk) => PopupMenuItem(
            child: Text(renk),
            value: renk,
            ),).toList();
        },
      ),
    );
  }
}
