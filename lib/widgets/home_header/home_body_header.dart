import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/constants.dart';
import 'package:my_portfolio/utilities/responsive.dart';
import 'package:my_portfolio/widgets/home_header/my_image.dart';
import 'package:my_portfolio/widgets/home_header/my_name.dart';
import 'package:my_portfolio/widgets/home_header/salutation.dart';

class HomeBodyHeader extends StatelessWidget {
  const HomeBodyHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive.isSmallScreen(context) ||
            Responsive.isMediumScreen(context)
        ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const MyImage(),
                const Salutation(fontSize: 45),
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
                const MyName(fontSize: 45),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: lightBackGroundColor,
                      ),
                      child: Row(
                        children: const [
                          Text('Hire Me'),
                          SizedBox(width: 20),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Text('Download CV'),
                          SizedBox(width: 20),
                          Icon(Icons.download_outlined),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.whatsapp_outlined),
                      SizedBox(width: 30),
                      Text('Get in touch by whatsapp'),
                      SizedBox(width: 30),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
              ],
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Expanded(
                  child: MyImage(),
                ),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Salutation(fontSize: 45),
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
                      const MyName(),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: lightBackGroundColor,
                            ),
                            child: Row(
                              children: const [
                                Text('Hire Me'),
                                SizedBox(width: 20),
                                Icon(Icons.arrow_forward),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              children: const [
                                Text('Download CV'),
                                SizedBox(width: 20),
                                Icon(Icons.download_outlined),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(Icons.whatsapp_outlined),
                            SizedBox(width: 30),
                            Text('Get in touch by whatsapp'),
                            SizedBox(width: 30),
                            Icon(Icons.arrow_forward),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}
