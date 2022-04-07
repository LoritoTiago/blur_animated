import 'package:blur_animated/cor.dart';
import 'package:blur_animated/model/animated_box_model.dart';
import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final AnimatedBoxModel box;
  const Box({Key? key, required this.box}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      top: box.heigth,
      left: box.wigth,
      duration: const Duration(seconds: 1),
      child: Container(
        height: 50,
        width: 50,
        color: second,
      ),
    );
  }
}
