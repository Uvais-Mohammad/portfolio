import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/home_body_content.dart';
import 'package:my_portfolio/widgets/home_body_header.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        HomeBodyHeader(),
        // Padding(
        //   padding: const EdgeInsets.all(24.0),
        //   child: Center(
        //     child: Text("To be continued...",
        //         style: Theme.of(context).textTheme.headline6),
        //   ),
        // ),
        HomeBodyContent(),
        // HomeBodyFooter(),
      ],
    );
  }
}
