
import 'package:flutter/material.dart';
import 'package:ui_design_netflix/core/constants.dart';
import 'package:ui_design_netflix/presentation/downloads/widgets/main_title.dart';
import 'package:ui_design_netflix/presentation/widgets/main_card.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({
    super.key,
    required this.title,
  });
final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      MainTitle(title: title),
      kheight,
    
    LimitedBox(
      maxHeight: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(10, (index) =>  const Padding(
        padding: EdgeInsets.only(right: 5.0), // Adjust the right padding as needed
        child: MainCard1(),)),
        
      ),
    )
    ]);
  }
}