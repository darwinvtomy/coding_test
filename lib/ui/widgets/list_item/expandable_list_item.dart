import 'package:coding_test/ui/styles/textstyles.dart';
import 'package:coding_test/ui/widgets/custom/custom_expansion_tile.dart';
import 'package:coding_test/ui/widgets/utils/space.dart';
import 'package:flutter/material.dart';

import 'expanded_listile.dart';

class ExpandableListItem extends StatelessWidget {
  final bool expanded;
  final String imageUrl;
  final String downloadstring;
  final Size imageSize;
  final List<String> syllabus;
  const ExpandableListItem(
      {Key key,
      this.expanded = false,
      this.imageUrl,
      this.downloadstring,
      this.imageSize, this.syllabus})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> contents = syllabus.map((e) => Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(e,style: regular.size14.copyWith(
          color: Colors.deepPurple
      ) ,),
    )).toList();
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent,
          accentColor: Colors.black,
        ),
        child: ListTileTheme(

          contentPadding: EdgeInsets.only(left: 0),
          child: CustomExpansionTile(
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
            backgroundColor: Colors.transparent,
            initiallyExpanded: expanded,
            title: ExpandedListTile(),
            expandedAlignment: Alignment.centerLeft,
            children: <Widget>[
              ...contents,
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 8,vertical: 8
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 20,vertical: 5
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(22)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      downloadstring,
                      style: bold.size18.copyWith(
                        color: Colors.black
                      ),
                    ),
                    Icon(Icons.save)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
