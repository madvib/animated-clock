import 'package:flutter/material.dart';

import '../constants.dart';
import 'animated_number.dart';
import 'clock_item_container.dart';
import 'colon.dart';

class ClockDisplay extends StatelessWidget {
  const ClockDisplay({
    Key key,
    @required this.hour,
    @required this.isNight,
    @required this.minute,
    @required this.second,
    @required this.is24HourFormat,
  }) : super(key: key);

  final String hour;
  final bool isNight;
  final bool is24HourFormat;
  final String minute;
  final String second;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 40.0, left: 12, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClockItemContainer(
              child: AnimatedNumber(
                number: int.parse(hour.substring(0, 1)),
                position: ClockPosition.HourTens,
                isNight: isNight,
                is24Hr: is24HourFormat,
              ),
            ),
            ClockItemContainer(
              child: AnimatedNumber(
                number: int.parse(hour.substring(1)),
                position: ClockPosition.HourSingles,
                isNight: isNight,
                is24Hr: is24HourFormat,
              ),
            ),
            ClockItemContainer(
              child: Colon(
                isDarkTheme: isNight,
              ),
            ),
            ClockItemContainer(
              child: AnimatedNumber(
                number: int.parse(minute.substring(0, 1)),
                position: ClockPosition.MinutesAndSecondsTens,
                isNight: isNight,
                is24Hr: is24HourFormat,
              ),
            ),
            ClockItemContainer(
              child: AnimatedNumber(
                number: int.parse(minute.substring(1)),
                position: ClockPosition.MinuteAndSecondsSingles,
                isNight: isNight,
                is24Hr: is24HourFormat,
              ),
            ),
            ClockItemContainer(
              child: Colon(
                isDarkTheme: isNight,
              ),
            ),
            ClockItemContainer(
              child: AnimatedNumber(
                number: int.parse(second.substring(0, 1)),
                position: ClockPosition.MinutesAndSecondsTens,
                isNight: isNight,
                is24Hr: is24HourFormat,
              ),
            ),
            ClockItemContainer(
              child: AnimatedNumber(
                number: int.parse(second.substring(1)),
                position: ClockPosition.MinuteAndSecondsSingles,
                isNight: isNight,
                is24Hr: is24HourFormat,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
