import 'package:flutter/material.dart';
import 'package:my_portfolio/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class ThemeButton extends StatefulWidget {
  const ThemeButton({
    Key? key,
  }) : super(key: key);

  @override
  State<ThemeButton> createState() => _ThemeButtonState();
}

class _ThemeButtonState extends State<ThemeButton>
    with SingleTickerProviderStateMixin {
  

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return IconButton(
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
              ),
      ),
      onPressed: () {
        themeProvider.themeType == ThemeType.light
            ? themeProvider.themeType = ThemeType.dark
            : themeProvider.themeType = ThemeType.light;
      },
    );
  }
}
