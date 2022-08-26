import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/animated_text.dart';

class HomeBodyContent extends StatelessWidget {
  const HomeBodyContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(36.0),
      child: Column(
        children: const [
          AnimatedText(),
        ],
      ),
    );
  }
}
