import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class MyDesignation extends StatelessWidget {
  const MyDesignation({Key? key, this.fontSize}) : super(key: key);
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      repeatForever: true,
      animatedTexts: [
        TyperAnimatedText(
          'Flutter Developer',
          textStyle: Theme.of(context).textTheme.headline2!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: fontSize,
              ),
        ),
        TyperAnimatedText(
          'Software Engineer',
          textStyle: Theme.of(context).textTheme.headline2!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: fontSize,
              ),
        ),
      ],
    );
  }
}