import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/utilities/responsive.dart';

class HomeBodyHeader extends StatelessWidget {
  const HomeBodyHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive.isSmallScreen(context)
        ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/my_image2.png',
                  height: 400,
                  width: 400,
                ),
                Text(
                  'Hello I\'m a',
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                        fontSize: 45,
                      ),
                ),
                AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    TyperAnimatedText(
                      'Flutter Developer',
                      textStyle:
                          Theme.of(context).textTheme.headline2!.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 45,
                              ),
                    ),
                    TyperAnimatedText(
                      'Software Engineer',
                      textStyle:
                          Theme.of(context).textTheme.headline2!.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 45,
                              ),
                    ),
                  ],
                ),
                Text(
                  'Uvais Mohammad',
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                        fontSize: 45,
                      ),
                ),
              ],
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/images/my_image2.png',
                    height: 400,
                    width: 400,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello I\'m a',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          TyperAnimatedText(
                            'Flutter Developer',
                            textStyle:
                                Theme.of(context).textTheme.headline2!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          TyperAnimatedText(
                            'Software Engineer',
                            textStyle:
                                Theme.of(context).textTheme.headline2!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ],
                      ),
                      Text(
                        'Uvais Mohammad',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}
