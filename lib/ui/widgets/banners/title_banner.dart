import 'package:coding_test/ui/styles/colors.dart';
import 'package:coding_test/ui/styles/textstyles.dart';
import 'package:coding_test/ui/widgets/shape/ribbon_shape.dart';
import 'package:coding_test/ui/widgets/utils/space.dart';
import 'package:flutter/material.dart';

import 'title_sub_banner.dart';

class TitleBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: ColorsList.fadedPink,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),topRight: Radius.circular(12)
                ),
              ),
              child: Container(
                height: 220,
                width: double.infinity,
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Container(
                      padding: EdgeInsets.only(
                        left: 2,
                      ),
                        child: Image.network(
                      'https://new-img.patrika.com/upload/2019/08/14/mendhisss.jpg',
                          color: Colors.black45,
                      fit: BoxFit.fitWidth,colorBlendMode: BlendMode.darken,
                    ))),
              ),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(22),
                  //  height: 240,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'How to learn the art of Mehandi with a few easy tricks.',
                        style: bold.size22.colorWhite,
                      ),
                      verticalSpace(5),
                      Row(
                        children: [
                          Text(
                            'By Vibhithi Singh',
                            style: regular.size20.colorWhite,
                          ),
                          horizontalSpace(10),
                          Flexible(
                            fit: FlexFit.loose,
                            child: Container(
                              padding:
                                  EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(18))),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.person_add,
                                    color: Colors.white,
                                  ),
                                  horizontalSpace(10),
                                  Text(
                                    'Follow Trainer',
                                    style: regular.size18.colorWhite,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      verticalSpace(5),
                      RichText(
                        text: TextSpan(
                          text: '27 - 30 July',
                          style: bold.size22.colorWhite,
                          children: <TextSpan>[
                            TextSpan(text: ' | ', style: bold.size22.colorWhite),
                            TextSpan(
                                text: '3:30-4:30PM',
                                style: regular.size22.colorWhite),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                Container(
                  color: Colors.black45,
                  height: 35,
                  child: Row(
                    children: [
                      Container(
                        color: Colors.lightGreen,
                        height: 34,
                        child: Text(
                          'CONFIRMED',
                          style: regular.size20.colorWhite,
                        ),
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 10),
                      ),
                      Container(
                        height: 34,
                        width: 50,
                        child: CustomPaint(
                          size: Size(50,
                              40), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                          painter: RibbonShape(),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 2
          ),
          child: TitleSubBanner(),
        )
      ],
    );
  }
}
