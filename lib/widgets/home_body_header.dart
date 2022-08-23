import 'package:flutter/material.dart';
import 'package:my_portfolio/utilities/responsive.dart';

class HomeBodyHeader extends StatelessWidget {
  const HomeBodyHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive.isSmallScreen(context)
        ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const FlutterLogo(
                  size: 300,
                ),
                Text(
                  'Hello I\'m a',
                  style: Theme.of(context).textTheme.headline2,
                ),
                Text(
                  'Flutter Developer',
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  'Uvais Mohammad',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ],
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Expanded(
                  child: FlutterLogo(
                    size: 300,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello I\'m a',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      Text(
                        'Flutter Developer',
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Text(
                        'Uvais Mohammad',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}
