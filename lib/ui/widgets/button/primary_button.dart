import 'package:coding_test/ui/styles/colors.dart';
import 'package:coding_test/ui/styles/textstyles.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String btnText;
  final Function onPressed;
  final Color color;
  const PrimaryButton({Key key, this.btnText = 'null', this.onPressed, this.color = ColorsList.watermelon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: color,
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
      ),
      child: Center(child: Text(btnText,style: regular.size14.colorWhite,)),
    );
  }
}
