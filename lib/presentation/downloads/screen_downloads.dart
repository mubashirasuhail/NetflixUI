import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ui_design_netflix/core/colors.dart';
import 'package:ui_design_netflix/core/constants.dart';
import 'package:ui_design_netflix/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});
  final _widgetList = [
    const _SmartDownloads(),
    const Section2(),
    const Section3()
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
          appBar: const PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: AppBarWidget(
                title: 'Downloads',
              )),
          body: ListView.separated(
            padding: EdgeInsets.symmetric(vertical: 8),
            itemBuilder: (ctx, index) => _widgetList[index],
            separatorBuilder: (ctx, index) => SizedBox(
              height: 23,
            ),
            itemCount: _widgetList.length,
          )),
    );
  }
}

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final List imageList = [
      "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/8hsOpZJvA1FN3XKnzLHb9475Gp6.jpg",
      "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/jLLtx3nTRSLGPAKl4RoIv1FbEBr.jpg",
      "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/5qhtTPWNqzM1eo9QIIf5cyIUeAA.jpg",
    ];
    return Column(
      children: [
        const Text(
          'Indroducing Downloads for You',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: kWhitecolor, fontSize: 23, fontWeight: FontWeight.bold),
        ),
        kheight,
        const Text(
          'We will download a personalized selection of\nmovies and shows for you, so there is\nalways something to watch on your\ndevice',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color.fromARGB(255, 186, 185, 185), fontSize: 16),
        ),
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: size.width * 0.29,
                backgroundColor: Colors.grey.withOpacity(0.5),
              ),
              DownloadsImageWidget(
                imageList: imageList[0],
                radius: 3,
                margin: EdgeInsets.only(left: 130, top: 32),
                angle: 20,
                size: Size(size.width * 0.3, size.width * 0.35),
              ),
              DownloadsImageWidget(
                imageList: imageList[1],
                radius: 3,
                margin: EdgeInsets.only(right: 130, top: 32),
                angle: -20,
                size: Size(size.width * 0.3, size.width * 0.35),
              ),
              DownloadsImageWidget(
                imageList: imageList[2],
                radius: 3,
                margin: EdgeInsets.only(bottom: 12, top: 32),
                size: Size(size.width * 0.32, size.width * 0.43),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            color: kButtoncolorblue2,
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Set up',
                style: TextStyle(
                    color: kWhitecolor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        kheight,
        MaterialButton(
          color: kButtoncolorwhite,
          onPressed: () {},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See What You Can Download',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        kWidth,
        Icon(Icons.settings, color: kWhitecolor),
        kWidth,
        Text('Smart Downloads'),
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    required this.imageList,
    this.angle = 0,
    required this.margin,
    required this.size,
    this.radius = 10,
  });

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: Container(
          // margin: margin,
          width: size.width,
          height: size.height,
          //color: Colors.black,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius),
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageList))),
        ),
      ),
    );
  }
}
