import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            color: Colors.red.shade100,
            width: 300,
          height: 300,
          margin: const EdgeInsets.only(top: 20),
            child: Image.asset('assets/images/car.jpg',
            fit: BoxFit.cover,
            
            ),
            ),
        ],
      ),
    );
  }
}
