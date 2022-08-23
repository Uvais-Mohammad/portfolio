import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Spacer(flex: 4),
            Text("About Me"),
            Spacer(),
            Text("Projects"),
            Spacer(),
            Text("Skills"),
            Spacer(),
            Text("Contact"),
            Spacer(flex: 4),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      // drawer: const SideMenu(),
      extendBodyBehindAppBar: true,
      body: Expanded(
        flex: 3,
        child: Container(),
      ),
    );
  }
}
