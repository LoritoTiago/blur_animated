import 'dart:math';

import 'package:sizer/sizer.dart';

class AnimatedBoxModel {
  double heigth, wigth;
  AnimatedBoxModel({required this.heigth, required this.wigth});

  AnimatedBoxModel getData() {
    return AnimatedBoxModel(
      heigth: Random().nextInt(100.0.h.round()).toDouble(),
      wigth: Random().nextInt(100.0.w.round()).toDouble(),
    );
  }
}
