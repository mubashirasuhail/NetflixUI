import 'package:flutter/material.dart';
import 'package:ui_design_netflix/core/constants.dart';
import 'package:ui_design_netflix/presentation/downloads/widgets/main_title.dart';
import 'package:ui_design_netflix/presentation/home/widgets/number_card.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      MainTitle(title: 'Top 10 TV Shows In India Today '),
      kheight,
      LimitedBox(
          maxHeight: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                8,
                (index) => Padding(
                      padding: EdgeInsets.only(
                          right: 1.0), // Adjust the right padding as needed
                      child: NumberCard(
                        index: index,
                      ),
                    )),
          ))
    ]);
  }
}
