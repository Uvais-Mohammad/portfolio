import 'package:flutter/material.dart';
import 'package:my_portfolio/provider/theme_provider.dart';
import 'package:my_portfolio/utilities/responsive.dart';
import 'package:my_portfolio/widgets/home_body.dart';
import 'package:my_portfolio/widgets/side_menu.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 450));
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: !Responsive.isSmallScreen(context)
                ? [
                    const Spacer(flex: 4),
                    const Text("About Me"),
                    const Spacer(),
                    const Text("Projects"),
                    const Spacer(),
                    const Text("Skills"),
                    const Spacer(),
                    const Text("Contact"),
                    const Spacer(flex: 4),
                  ]
                : []),
        centerTitle: true,
        actions: [
          IconButton(
            icon: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                transitionBuilder: (child, anim) => RotationTransition(
                      turns: child.key == const ValueKey('icon1')
                          ? Tween<double>(begin: 1, end: 0.75).animate(anim)
                          : Tween<double>(begin: 0.75, end: 1).animate(anim),
                      child: FadeTransition(opacity: anim, child: child),
                    ),
                child: themeProvider.themeType == ThemeType.light
                    ? const Icon(Icons.nightlight, key: ValueKey('icon1'))
                    : const Icon(
                        Icons.sunny,
                        key: ValueKey('icon2'),
                      )),
            onPressed: () {
              themeProvider.themeType == ThemeType.light
                  ? themeProvider.themeType = ThemeType.dark
                  : themeProvider.themeType = ThemeType.light;
            },
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: Responsive.isSmallScreen(context) ? const SideMenu() : null,
      extendBodyBehindAppBar: true,
      body: const HomeBody(),
    );
  }
}
