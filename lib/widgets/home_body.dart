import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/home_body_content.dart';
import 'package:my_portfolio/widgets/home_header/home_body_header.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        HomeBodyHeader(),
        AboutMe(),
      ],
    );
  }
}
