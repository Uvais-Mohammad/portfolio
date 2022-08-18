import 'package:flutter/material.dart';
import 'package:my_portfolio/utilities/responsive.dart';
import 'package:my_portfolio/widgets/side_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isMediumScreen(context) ||
              Responsive.isSmallScreen(context)
          ? AppBar(
              title: const Text('My Portfolio'),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
            )
          : null,
      drawer: const SideMenu(),
      extendBodyBehindAppBar: true,
      body: Row(
        children: <Widget>[
          Responsive.isLargeScreen(context)
              ? Expanded(
                  flex: 1,
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.3,
                    ),
                    child: const SideMenu(),
                  ),
                )
              : const SizedBox.shrink(),
          Expanded(
            flex: 3,
            child: Container(

            ),
          ),
        ],
      ),
    );
  }
}
