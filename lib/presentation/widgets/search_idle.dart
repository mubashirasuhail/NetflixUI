import 'package:flutter/cupertino.dart';

import 'package:ui_design_netflix/core/colors.dart';
import 'package:ui_design_netflix/core/constants.dart';
import 'package:ui_design_netflix/presentation/widgets/title.dart';
const imageUrl='https://www.themoviedb.org/t/p/w250_and_h141_face/tmU7GeKVybMWFButWEGl2M4GeiP.jpg';
class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
       crossAxisAlignment: CrossAxisAlignment.start,
      children: [ const SearchTextTitle(title: 'Top Searches'),
          kheight,
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (ctx,index)=>const TopSearchItemTile(),separatorBuilder: (ctx,index)=>kheight2,itemCount: 10,
            ),
          )
          ],
          );

  }
}


class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth=MediaQuery.of(context).size.width;
    return Row(children: [
      Container(
        width: screenWidth*0.28,
        height: 65,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(imageUrl))
        ),
      ),
      kWidth,
      const Expanded(child: Text('God Father',style: TextStyle(color: kWhitecolor,fontWeight: FontWeight.bold,fontSize: 16),)),
//CircleAvatar(backgroundColor: kWhitecolor,radius: 25,)
const Icon(CupertinoIcons.play_circle,color:Color.fromARGB(255, 234, 233, 233),size: 35,),
    ],);
  }
}