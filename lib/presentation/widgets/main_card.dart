
import 'package:flutter/material.dart';
import 'package:ui_design_netflix/core/constants.dart';

class MainCard1 extends StatelessWidget {
  const MainCard1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105,
      height: 150,
        
      decoration: BoxDecoration(
        borderRadius: kradius,
        image: const DecorationImage(image: NetworkImage('https://www.themoviedb.org/t/p/w220_and_h330_face/ePwZs1oOh4pg8UZP8DuVZZeIn89.jpg'),fit: BoxFit.cover,)),
      
    );
  }
}