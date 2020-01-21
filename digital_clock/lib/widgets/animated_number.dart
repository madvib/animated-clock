import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class AnimatedNumber extends StatefulWidget {
  final ClockPosition position;
  final bool is24Hr;
  final bool isNight;
  final int number;

  const AnimatedNumber(
      {Key key,
      @required this.number,
      @required this.position,
      @required this.is24Hr,
      @required this.isNight})
      : super(key: key);
  @override
  _AnimatedNumberState createState() => _AnimatedNumberState();
}

class _AnimatedNumberState extends State<AnimatedNumber> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlareActor(
        'assets/clock_animation.flr',
        artboard: widget.isNight ? 'LightNumbers' : 'DarkNumbers',
        animation:
            _getAnimationName(widget.position, widget.number, widget.is24Hr),
        sizeFromArtboard: true,
        fit: BoxFit.fill,
      ),
    );
  }

  String _getAnimationName(ClockPosition position, int timeInput, bool is24Hr) {
    switch (position) {
      case ClockPosition.HourTens:
        return _hourTensAnimation(timeInput, is24Hr);
        break;
      case ClockPosition.HourSingles:
        return _hourSinglesAnimation(timeInput, is24Hr);
        break;
      case ClockPosition.MinutesAndSecondsTens:
        return _zeroThruFiveAnimations(timeInput);
        break;
      case ClockPosition.MinuteAndSecondsSingles:
        return _zeroThruNineAnimations(timeInput);
        break;
      default:
        return _zeroThruNineAnimations(timeInput);
    }
  }

  String _hourTensAnimation(int timeInput, bool is24Hr) {
    int hour = DateTime.now().hour;
    String animation;
    if (is24Hr && hour == 00) {
      animation = '2 to 0';
    }
    if (!is24Hr && hour == 01) {
      animation = '1 to 0';
    } else
      animation = _zeroThruNineAnimations(timeInput);

    return animation;
  }

  String _hourSinglesAnimation(int timeInput, bool is24Hr) {
    int hour = DateTime.now().hour;
    String animation;
    if (is24Hr && hour == 00) {
      animation = '3 to 0';
    }
    if (!is24Hr && hour == 01) {
      animation = '2 to 1';
    } else
      animation = _zeroThruNineAnimations(timeInput);

    return animation;
  }

  String _zeroThruFiveAnimations(int timeInput) {
    switch (timeInput) {
      case 0:
        return '5 to 0';
      case 1:
        return '0 to 1';
      case 2:
        return '1 to 2';
      case 3:
        return '2 to 3';
      case 4:
        return '3 to 4';
      case 5:
        return '4 to 5';
      case 6:
        return '5 to 0';
        break;
      default:
        return '9 to 0';
    }
  }

  String _zeroThruNineAnimations(int timeInput) {
    switch (timeInput) {
      case 0:
        return '9 to 0';
      case 1:
        return '0 to 1';
      case 2:
        return '1 to 2';
      case 3:
        return '2 to 3';
      case 4:
        return '3 to 4';
      case 5:
        return '4 to 5';
      case 6:
        return '5 to 6';
      case 7:
        return '6 to 7';
      case 8:
        return '7 to 8';
      case 9:
        return '8 to 9';
        break;
      default:
        return '9 to 0';
    }
  }
}
