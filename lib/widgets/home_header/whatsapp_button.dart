import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WhatsappButton extends StatelessWidget {
  const WhatsappButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        launchUrl(Uri.parse('https://wa.me/919895057063'));
      },
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.chat),
          SizedBox(width: 30),
          Text('Get in touch by whatsapp'),
          SizedBox(width: 30),
          Icon(Icons.arrow_forward),
        ],
      ),
    );
  }
}
