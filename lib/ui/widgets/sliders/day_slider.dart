import 'package:coding_test/ui/styles/textstyles.dart';
import 'package:coding_test/ui/widgets/utils/space.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DaySlider extends StatefulWidget {
  DaySlider({Key key}) : super(key: key);

  @override
  _DaySliderState createState() => _DaySliderState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _DaySliderState extends State<DaySlider> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen.withOpacity(0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(40),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(disabledThumbColor: Colors.red,
              valueIndicatorColor: Colors.lightGreen,valueIndicatorShape: PaddleSliderValueIndicatorShape(),
              overlappingShapeStrokeColor: Colors.purple,
              inactiveTrackColor: Color(0xFF8D8E98), // Custom Gray Color
              activeTrackColor: Colors.white,
              thumbColor: Colors.red,
              overlayColor: Color(0x29EB1555),  // Custom Thumb overlay Color
              thumbShape:
              RoundSliderThumbShape(enabledThumbRadius: 7.0,disabledThumbRadius: 7.0),
              trackHeight: 7.0,
              overlayShape:
              RoundSliderOverlayShape(overlayRadius: 20.0),
            ),
            child: Slider(
              inactiveColor: Colors.black12,
              activeColor: Colors.lightGreen,
              value: _currentSliderValue,
              min: 1,
              max: 100,
              divisions: 5,
              label: 'Day-${_currentSliderValue.round().toString()}',
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text('Next Class: 28 July, 4.30 PM',style: bold.size16,),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,vertical: 10
            ),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.lightGreen,
              borderRadius: BorderRadius.all(Radius.circular(22))

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Upload Todays Look',style: bold.size16.colorWhite,),
                Icon(Icons.cloud_upload,color: Colors.white,)
              ],
            ),
          )

        ],
      ),
    );
  }
}