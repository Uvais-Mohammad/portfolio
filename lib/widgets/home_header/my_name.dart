import 'package:flutter/material.dart';
class MyName extends StatelessWidget {
  const MyName({Key? key, this.fontSize}) : super(key: key);
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      'Uvais Mohammad',
      style: Theme.of(context).textTheme.headline2!.copyWith(
            fontSize: fontSize,
          ),
    );
  }
}

