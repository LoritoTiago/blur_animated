import 'dart:async';
import 'dart:math';

import 'package:blur_animated/model/animated_box_model.dart';
import 'package:blur_animated/view/box.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

abstract class BackgroundAminatedContrat {
  void updateState();
}

class BackgroundAnimatedController {
  final BackgroundAminatedContrat backgroundContrat;
  BackgroundAnimatedController(this.backgroundContrat);

  AnimatedBoxModel box = AnimatedBoxModel(heigth: 0.0, wigth: 0.0).getData();

  init() {
    box = box.getData();
  }

  generatePlus() {
    Timer.periodic(const Duration(milliseconds: 5), (timer) {
      box.heigth++;
      box.wigth++;
      if (box.wigth >= 100.0.w) {
        timer.cancel();
        box = box.getData();
        timer.cancel();
        generateLess();
      }
      backgroundContrat.updateState();
    });
  }

  generateLess() {
    Timer.periodic(const Duration(milliseconds: 5), (timer) {
      box.heigth--;
      box.wigth--;

      if (box.wigth <= 0.0) {
        timer.cancel();
        box = box.getData();
        timer.cancel();
        generatePlus();
      }
      backgroundContrat.updateState();
    });
  }
}
