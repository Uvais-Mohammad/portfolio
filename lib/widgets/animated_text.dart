import 'dart:async';

import 'package:flutter/material.dart';

class AnimatedText extends StatefulWidget {
  final int? delay;
  const AnimatedText({
    Key? key,
    this.delay = 0,
  }) : super(key: key);

  @override
  State<AnimatedText> createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText>
    with SingleTickerProviderStateMixin {
  late AnimationController animController;
  late Animation<Offset> animOffset;
  @override
  void initState() {
    super.initState();

    animController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    final curve =
        CurvedAnimation(curve: Curves.decelerate, parent: animController);
    animOffset = Tween<Offset>(begin: const Offset(0.0, 0.35), end: Offset.zero)
        .animate(curve);

    if (widget.delay == null) {
      animController.forward();
    } else {
      Timer(Duration(milliseconds: widget.delay!), () {
        animController.forward();
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
    animController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animController,
      child: SlideTransition(
        position: animOffset,
        child: Text(
          'About Me',
          style: Theme.of(context).textTheme.headline4!,
        ),
      ),
    );
  }
}
