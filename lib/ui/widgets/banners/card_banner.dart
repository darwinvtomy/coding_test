import 'package:coding_test/ui/styles/textstyles.dart';
import 'package:coding_test/ui/widgets/utils/space.dart';
import 'package:flutter/material.dart';

class CardBanner extends StatelessWidget {
  final String title;
  final String description;
  final String img;
  final List<Color> gradientcolors;

  const CardBanner(
      {Key key, this.title, this.description, this.img, this.gradientcolors})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          gradient: LinearGradient(
              begin: Alignment(0.16986916714528366, -0.45508572385187485),
              end: Alignment(1.1569228485569845, 1.327618777959251),
              colors: gradientcolors ??
                  [const Color(0xffdff6ff), const Color(0xff59b5d9)])),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 70,width: 70,
              child: Image.network(img)),
          verticalSpace(10),
          Text(
            title,
            style: bold.size18.colorWhite,
          ),
          verticalSpace(10),
          Text(
            description,
            style: regular.size18.colorWhite,
          ),
        ],
      ),
    );
  }
}
