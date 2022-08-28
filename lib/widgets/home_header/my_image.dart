import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  const MyImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/my_image2.png',
      height: 400,
      width: 400,
    );
  }
}