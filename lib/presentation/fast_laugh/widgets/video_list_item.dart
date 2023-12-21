import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design_netflix/core/colors.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.black.withOpacity(0.5),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.volume_off,
                          color: kWhitecolor,
                          size: 23,
                        ))),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://wallpapers.com/images/hd/pretty-profile-pictures-k1qebyviiyl0wx0x.jpg'),
                      ),
                    ),
                    VideoActionsWidget(
                        icon: Icons.emoji_emotions, title: 'LOL'),
                    VideoActionsWidget(icon: Icons.add, title: 'My List'),
                    VideoActionsWidget(icon: Icons.share, title: 'Share'),
                    VideoActionsWidget(
                        icon: CupertinoIcons.play_circle, title: 'Play'),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionsWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionsWidget(
      {super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: kWhitecolor,
            size: 30,
          ),
          Text(
            title,
            style: TextStyle(color: kWhitecolor, fontSize: 14),
          )
        ],
      ),
    );
  }
}
