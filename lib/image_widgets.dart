import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _imgURL =
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUN8q93egDC33CqqesAMNUa80am3G65-Cb-Q&usqp=CAU';
    return ListView(
      children: [
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  color: Colors.red.shade100,
                  margin: const EdgeInsets.only(top: 20),
                  child: Image.asset(
                    'assets/images/car.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.red.shade100,
                  margin: const EdgeInsets.only(top: 20),
                  child: Image.network(
                    _imgURL,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.red.shade100,
                  margin: const EdgeInsets.only(top: 20),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      /*  child:  Text(
                    'F',
                    style: Theme.of(context).textTheme.headline1,
                  ), */
                      backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTP_AwEKjEcoNfBOn5c_PzxeBDJyuILXFgzIg&usqp=CAU',
                      ),
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 200,
          margin: const EdgeInsets.only(top: 20),
          child: FadeInImage.assetNetwork(
              fit: BoxFit.cover,
              placeholder: 'assets/images/loading.gif',
              image: _imgURL),
        ),
        const Placeholder(),
      ],
    );
  }
}
