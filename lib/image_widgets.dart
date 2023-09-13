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
            width: 200,
            height: 200,
            margin: const EdgeInsets.only(top: 20),
            child: Image.asset(
              'assets/images/car.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.red.shade100,
            margin: const EdgeInsets.only(top: 20),
            child: CircleAvatar(
              child: Text(
                'Z',
                style: Theme.of(context).textTheme.headline1,
              ),
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTP_AwEKjEcoNfBOn5c_PzxeBDJyuILXFgzIg&usqp=CAU'),
              backgroundColor: Colors.amber,
              foregroundColor: Colors.red,
              radius: 90,
            ),
          ),
        ],
      ),
    );
  }
}
