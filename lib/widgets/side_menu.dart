import 'package:flutter/material.dart';
import 'package:my_portfolio/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class SideMenu extends StatelessWidget {
  
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Drawer(
      child: ListView(
        children: <Widget>[
           DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              children:  [
                Switch(value: themeProvider.themeType==ThemeType.light, onChanged: (bool value){
                  themeProvider.themeType = value ? ThemeType.light : ThemeType.dark;
                })
              ],
            )
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
