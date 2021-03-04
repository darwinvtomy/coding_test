import 'package:coding_test/ui/styles/textstyles.dart';
import 'package:coding_test/ui/widgets/utils/space.dart';
import 'package:flutter/material.dart';
class ExpandedListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              height: 70,width: 70,
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('27',style: bold.size24.copyWith(
                    color: Colors.deepPurple
                  ),),
                  Text('JULY',style: regular.size18.copyWith(
                      color: Colors.deepPurple
                  ),)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,top: 8,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('5.00AM - 6.00AM',style: bold.size16.copyWith(
                    color: Colors.deepPurple
                ),),
                Container(
                  width: MediaQuery.of(context).size.width-200,
                  child: Text('Learn how to create a Flawless Make UP Base',style: regular.size14.copyWith(
                      color: Colors.deepPurple
                  ),maxLines: 4,),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
