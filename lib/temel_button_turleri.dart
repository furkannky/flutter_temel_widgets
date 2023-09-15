import 'package:flutter/material.dart';

class TemelButonlar extends StatelessWidget {
  const TemelButonlar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: Colors.green
          ),
          child: const Text('Text Button'),
        ),
        TextButton.icon(
          onPressed: () {},
          onLongPress: () {
            debugPrint('uzun basıldı');
          },
          icon: const Icon(Icons.add),
          label: const Text('text buton with icon '),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
          //  backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 3, 41, 147),),
          backgroundColor: MaterialStateProperty.resolveWith((states){
            if(states.contains(MaterialState.pressed)) {
              return Colors.teal;
            }
            if(states.contains(MaterialState.hovered)) {
              return Colors.green;
            }
            return null;
          }),
            overlayColor: MaterialStateProperty.all(
              Colors.yellow.withOpacity(0.5),
            ),
            foregroundColor: MaterialStateProperty.all(Colors.yellow)
          ),
          child: const Text("Elevated Buttun"),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(255, 2, 79, 142),
            onPrimary: Colors.yellow,
          ),
          icon: const Icon(Icons.add),
          label: const Text("Elevated Buttun with icon"),
        ),
        OutlinedButton(
          onPressed: () {},
          child: const Text("outline Buton"),
        ),
        OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            style: OutlinedButton.styleFrom(
              shape: const StadiumBorder(),
              side: const BorderSide(color: Colors.brown , width: 2),
            ),
            label: const Text("outline buton with icon"),
            ),
        OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Colors.purple, width: 2),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
            ),
            label: const Text("outline buton with icon"),
            ),
      ],
    );
  }
}
