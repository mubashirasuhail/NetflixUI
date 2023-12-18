
import 'package:flutter/material.dart';

import 'package:ui_design_netflix/presentation/widgets/main_title_card.dart';

import 'widgets/number_title.dart';


class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              MainTitleCard(title: 'Released In the past year'),
               MainTitleCard(title: 'Trending Now'),
               NumberTitleCard(),
               MainTitleCard(title: 'Tense Dramas'),
               MainTitleCard(title: 'South Indian Cinema'),
            ],
          ),
        ),
        

      ),
    );
  }
}



