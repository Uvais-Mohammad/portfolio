import 'package:flutter/material.dart';

class Salutation extends StatelessWidget {
  const Salutation({Key? key, this.fontSize}) : super(key: key);
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello I\'m a',
      style: Theme.of(context).textTheme.headline2!.copyWith(
            fontSize: fontSize,
          ),
    );
  }
}
