import 'package:flutter/material.dart';
import 'package:ui_design_netflix/core/constants.dart';
import 'package:ui_design_netflix/presentation/widgets/title.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/5qhtTPWNqzM1eo9QIIf5cyIUeAA.jpg';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTitle(title: 'Movies & TV'),
        kheight,
        Expanded(
            child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 1 / 1.4,
          children: List.generate(20, (index) {
            return const MainCard();
          }),
        ))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: NetworkImage(imageUrl), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(7),
      ),
    );
  }
}
