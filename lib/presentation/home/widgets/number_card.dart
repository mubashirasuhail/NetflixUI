import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:ui_design_netflix/core/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              width: 40,
              height: 150,
            ),
            Container(
              width: 105,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: kradius,
                  image: const DecorationImage(
                    //fit:BoxFit.cover,
                    image: NetworkImage(
                        'https://www.themoviedb.org/t/p/w220_and_h330_face/ePwZs1oOh4pg8UZP8DuVZZeIn89.jpg'),
                    fit: BoxFit.cover,
                  )),
            ),
          ],
        ),
        Positioned(
            left: 15,
            bottom: -30,
            child: BorderedText(
                strokeWidth: 10.0,
                strokeColor: Colors.white,
                child: Text(
                  '${index + 1}',
                  style: TextStyle(
                      fontSize: 130,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                      decorationColor: Colors.black),
                )))
      ],
    );
  }
}
