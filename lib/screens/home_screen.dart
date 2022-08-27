import 'package:flutter/material.dart';
import 'package:my_portfolio/utilities/responsive.dart';
import 'package:my_portfolio/widgets/custom_appbar.dart';
import 'package:my_portfolio/widgets/home_body.dart';
import 'package:my_portfolio/widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: Responsive.isSmallScreen(context) ? const SideMenu() : null,
      extendBodyBehindAppBar: true,
      body: const HomeBody(),
    );
  }
}
