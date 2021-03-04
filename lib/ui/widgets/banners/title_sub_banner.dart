import 'package:coding_test/ui/styles/colors.dart';
import 'package:coding_test/ui/styles/textstyles.dart';
import 'package:coding_test/ui/widgets/button/primary_button.dart';
import 'package:coding_test/ui/widgets/utils/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class TitleSubBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      //height: 100,
    decoration: BoxDecoration(
      color: ColorsList.fadedPink,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(12),bottomRight: Radius.circular(12)
      )
    ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(80)),
              child: Container(
                  height: 80,width: 80,
                  child: Image.network('https://akm-img-a-in.tosshub.com/indiatoday/images/story/202103/deepika_1200x768.jpeg',fit: BoxFit.cover,))),
          horizontalSpace(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Vibuthi Singh',
                style: bold.size18.waterMelon,
              ),
              Text(
                'Makeup Specilist',
                style: regular.size16.colorBlack,
              ),
              Container(
                  width: MediaQuery.of(context).size.width - 170,
                  child: PrimaryButton(btnText: 'Follow Trainer',onPressed: (){},))
            ],
          )
        ],
      ),
    );
  }
}
