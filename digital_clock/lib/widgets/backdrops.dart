import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class NightBackdrop extends StatelessWidget {
  const NightBackdrop({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlareActor('assets/clock_animation.flr',
        artboard: 'NightBackground', animation: 'Night', fit: BoxFit.fill);
  }
}

class DayBackdrop extends StatelessWidget {
  const DayBackdrop({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlareActor(
      'assets/clock_animation.flr',
      artboard: 'DayBackground',
      animation: 'Day',
      fit: BoxFit.fill,
    );
  }
}
