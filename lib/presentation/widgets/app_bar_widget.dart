
import 'package:flutter/material.dart';

import 'package:ui_design_netflix/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key,required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
        Text(
        title,style: const TextStyle(fontSize:30,fontWeight:FontWeight.bold,)),
      const Spacer(),
      const Icon(Icons.cast,color: Colors.white,size: 30,),
      kWidth,
     Container(
  width: 30,
  height: 25,
  decoration: const BoxDecoration(
    image: DecorationImage(
      image: AssetImage('assets/images/netf.jpg'),
      fit: BoxFit.cover, // Adjust this based on your needs
    ),
  ),
),
      kWidth,
    ],);
  }
}