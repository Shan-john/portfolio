import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class Launch {
  static Launch instance = Launch();

  void launchweb({required String url}) async {
    final Uri _url = Uri.parse('${url}');

    try {
      // ignore: deprecated_member_use
      await launch(_url.toString());
    } catch (e) {
      print(e);
    }
  }

  void launchEmail() async {
    final Uri _emailLaunchUri = Uri(
      //scheme: 'shanjohn5308@gmail.com',
      path: 'shanjohn5308@gmail.com',
      queryParameters: {
        'subject': 'Your Subject',
        'body': 'Your email body goes here.',
      },
    );

    // if (await Launch(_emailLaunchUri.toString())) {
    // await launch(_emailLaunchUri.toString());
    // } else {
    // }
    launchUrl(_emailLaunchUri);
  }
}
