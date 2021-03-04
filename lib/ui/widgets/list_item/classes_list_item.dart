import 'package:coding_test/ui/styles/colors.dart';
import 'package:coding_test/ui/styles/textstyles.dart';
import 'package:coding_test/ui/widgets/button/primary_button.dart';
import 'package:coding_test/ui/widgets/utils/space.dart';
import 'package:flutter/material.dart';

class ClassesListItem extends StatelessWidget {
  final String img;
  final String title;
  final String date;
  final String time;

  const ClassesListItem(
      {Key key,
        this.img,
        this.title,
        this.date,
        this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        margin: EdgeInsets.zero,
        child: Container(
          height: 220,
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12)
                ),
                child: Stack(
                  children: [
                    Image.network(
                      img,
                      fit: BoxFit.cover, height: 130,
                      width: 220,
                      color: Colors.black45,
                      colorBlendMode: BlendMode.darken,
                    ),
                    Positioned(
                        left: 16,bottom: 16,
                        child: Text('Rs. 200/- Only',style: bold.colorWhite.size16,))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalSpace(5),
                    Text(title,style: bold.size16,maxLines: 3,overflow: TextOverflow.ellipsis,),
                    verticalSpace(5),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.calendar_today_rounded,color: ColorsList.watermelon,size: 18,),horizontalSpace(5),
                        Text(date,style: bold.size16.waterMelon,),
                      ],
                    ),
                    verticalSpace(5),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.timelapse_outlined,color: ColorsList.watermelon,size: 18,),horizontalSpace(5),
                        Text(time,style: bold.size16.waterMelon,),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
