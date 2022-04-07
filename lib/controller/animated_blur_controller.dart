import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

abstract class UpdateState {
  void updatestate();
}

class AnimatedBlurController {
  final UpdateState state;

  AnimatedBlurController(this.state);

  var color =
      Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

  generateColor() {
    Timer.periodic(
      const Duration(seconds: 2),
      (timer) {
        color =
            Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
        state.updatestate();
      },
    );
  }
}
