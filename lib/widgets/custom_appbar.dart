import 'package:flutter/material.dart';
import 'package:my_portfolio/utilities/responsive.dart';
import 'package:my_portfolio/widgets/theme_button.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
      actions: const [ThemeButton()],
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
