import 'package:flutter/material.dart';
import 'package:my_portfolio/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          // DrawerHeader(
          //   decoration: const BoxDecoration(
          //     color: Colors.blue,
          //   ),
          //   child: Column(
          //     children: [
                
          //     ],
          //   ),
          // ),
          ListTile(
            title: const Text("About Me"),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Projects'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Skills'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Contact'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
