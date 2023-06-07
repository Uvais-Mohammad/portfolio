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
        ? const MobileView()
        : const LargeView();
  }
}

class LargeView extends StatelessWidget {
  const LargeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(child: MyImage()),
          SizedBox(width: 30),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Salutation(),
                MyDesignation(),
                MyName(),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HireMe(),
                    SizedBox(width: 10),
                    DownloadCv(),
                  ],
                ),
                SizedBox(height: 20),
                WhatsappButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MobileView extends StatelessWidget {
  const MobileView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MyImage(),
          Salutation(fontSize: 45),
          MyDesignation(
            fontSize: 45,
          ),
          MyName(fontSize: 45),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HireMe(),
              SizedBox(width: 10),
              DownloadCv(),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          WhatsappButton(),
        ],
      ),
    );
  }
}

class DownloadCv extends StatelessWidget {
  const DownloadCv({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      'Download CV',
      icon: Icons.download,
      onPressed: () {
        launchUrl(Uri.parse(resumeUrl));
      },
    );
  }
}

class HireMe extends StatelessWidget {
  const HireMe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      'Hire Me',
      primary: lightBackGroundColor,
      onPressed: () {},
    );
  }
}
