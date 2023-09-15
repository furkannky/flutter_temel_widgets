

import 'package:flutter/material.dart';

class DropDownButtonKullanimi extends StatefulWidget {
  const DropDownButtonKullanimi({super.key});

  @override
  State<DropDownButtonKullanimi> createState() => _DropDownButtonKullanimiState();
}

class _DropDownButtonKullanimiState extends State<DropDownButtonKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Center(
  child:DropdownButton<String>(
    items: const [
      DropdownMenuItem(child: Text('Ankara Şehri'), value: 'ankara'),
      DropdownMenuItem(child: Text('İstanbul Şehri'), value: 'istanbul'),
      DropdownMenuItem(child: Text('İzmir Şehri'), value: 'izmir'),
      
    ],
    value: 'istanbul',
    onChanged: (value) => {},
  ),
);

  }
}