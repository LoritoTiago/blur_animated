import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:blur_animated/controller/animated_blur_controller.dart';
import 'package:blur_animated/cor.dart';
import 'package:blur_animated/view/back_ground_animated.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AnimatedBlur extends StatefulWidget {
  const AnimatedBlur({Key? key}) : super(key: key);

  @override
  State<AnimatedBlur> createState() => _AnimatedBlurState();
}

class _AnimatedBlurState extends State<AnimatedBlur> implements UpdateState {
  var corAnm =
      Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  late AnimatedBlurController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimatedBlurController(this);
    _controller.generateColor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(seconds: 1),
        color: _controller.color,
        child: Container(
          child: Stack(
            children: [
              BackGroundAnimated(state: this),
              BackGroundAnimated(state: this),
              BackGroundAnimated(state: this),
              Positioned.fill(
                child: Center(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white.withOpacity(.5),
                      ),
                      width: 100.0.w,
                      height: 100.0.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            " + 500 Conexões",
                            style: TextStyle(
                              fontSize: 30.0.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void updatestate() {
    setState(() {});
  }
}
