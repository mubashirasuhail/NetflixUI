import 'package:flutter/material.dart';
import 'package:ui_design_netflix/presentation/downloads/screen_downloads.dart';
import 'package:ui_design_netflix/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:ui_design_netflix/presentation/home/screen_home.dart';
import 'package:ui_design_netflix/presentation/main_page/widgets/bottom_nav.dart';
import 'package:ui_design_netflix/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:ui_design_netflix/presentation/search/screen_search.dart';

class ScreenMainpage extends StatelessWidget {
  ScreenMainpage({super.key});
  final pages = [
    ScreenHome(),
    ScreenNewandHot(),
    FastLaugh(),
    ScreenSearch(),
    ScreenDownloads(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return pages[index];
          },
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
