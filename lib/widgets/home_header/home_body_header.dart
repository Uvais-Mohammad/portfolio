import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/constants.dart';
import 'package:my_portfolio/utilities/responsive.dart';
import 'package:my_portfolio/widgets/home_header/my_designation.dart';
import 'package:my_portfolio/widgets/home_header/my_image.dart';
import 'package:my_portfolio/widgets/home_header/my_name.dart';
import 'package:my_portfolio/widgets/home_header/primary_button.dart';
import 'package:my_portfolio/widgets/home_header/salutation.dart';
import 'package:my_portfolio/widgets/home_header/whatsapp_button.dart';
import 'package:url_launcher/url_launcher.dart';

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
                const MyDesignation(),
                const MyName(fontSize: 45),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PrimaryButton(
                      'Hire Me',
                      primary: lightBackGroundColor,
                      onPressed: () {},
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    PrimaryButton(
                      'Download CV',
                      icon: Icons.download,
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const WhatsappButton(),
              ],
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Expanded(child: MyImage()),
                const SizedBox(width: 30),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Salutation(fontSize: 45),
                      const MyDesignation(fontSize: 45),
                      const MyName(),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PrimaryButton(
                            'Hire Me',
                            primary: lightBackGroundColor,
                            onPressed: () {},
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          PrimaryButton(
                            'Download CV',
                            icon: Icons.download,
                            onPressed: () {
                              launchUrl(Uri.parse(
                                  'https://drive.google.com/file/d/1QI_QSHZZEukAKPr6HR3W9T3JFc09-wFN/view?usp=sharing'));
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const WhatsappButton(),
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}
