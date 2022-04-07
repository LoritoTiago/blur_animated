import 'dart:async';
import 'dart:math';

import 'package:blur_animated/controller/animated_blur_controller.dart';
import 'package:blur_animated/controller/background_animated_controller.dart';
import 'package:blur_animated/cor.dart';
import 'package:blur_animated/view/box.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BackGroundAnimated extends StatefulWidget {
  final UpdateState state;
  const BackGroundAnimated({Key? key, required this.state}) : super(key: key);

  @override
  State<BackGroundAnimated> createState() => _BackGroundAnimatedState();
}

class _BackGroundAnimatedState extends State<BackGroundAnimated>
    implements BackgroundAminatedContrat {

  var corAnm =
      Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

  late BackgroundAnimatedController _controller;
  @override
  void initState() {
    super.initState();
    _controller = BackgroundAnimatedController(this);

    _controller.init();
    _controller.generatePlus();
  }


  @override
  Widget build(BuildContext context) {
    return Box(box: _controller.box);
  }

  @override
  void updateState() {
    setState(() {});
  }
}
