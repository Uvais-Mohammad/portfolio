import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/animated_text.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          AboutMeText(),
          SizedBox(height: 16.0),
          AboutMeDescription(),
        ],
      ),
    );
  }
}

class AboutMeDescription extends StatelessWidget {
  const AboutMeDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedText(
      delay: 500,
      text:
          '“👨‍💻 A self-made hard-working app developer with a strong focus on Flutter development. Passionate about programming and UI Designing ”',
      style: Theme.of(context).textTheme.headline5!,
    );
  }
}

class AboutMeText extends StatelessWidget {
  const AboutMeText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedText(
      text: 'About Me',
      style: Theme.of(context).textTheme.headline4!,
    );
  }
}
