import 'package:flutter/material.dart';
import 'package:ui_design_netflix/core/colors.dart';
import 'package:ui_design_netflix/core/constants.dart';

import 'package:ui_design_netflix/presentation/widgets/main_title_card.dart';

import 'widgets/number_title.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 600,
                    decoration: BoxDecoration(
                        image:
                            DecorationImage(image: NetworkImage(kMainImage))),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [],
                        ),
                        _PlayButton()
                      ],
                    ),
                  )
                ],
              ),
              MainTitleCard(title: 'Released In the past year'),
              kheight,
              MainTitleCard(title: 'Trending Now'),
              kheight,
              NumberTitleCard(),
              kheight,
              MainTitleCard(title: 'Tense Dramas'),
              kheight,
              MainTitleCard(title: 'South Indian Cinema'),
              kheight,
            ],
          ),
        ),
      ),
    );
  }

  TextButton _PlayButton() {
    return TextButton.icon(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(kWhitecolor)),
        icon: Icon(
          Icons.play_arrow,
          size: 25,
          color: Colors.black,
        ),
        label: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Play',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ));
  }
}
