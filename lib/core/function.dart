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

  void launchEmail({required String yourSubject,required String body}) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'shanjohn5308@gmail.com',
      queryParameters: {
        'subject': yourSubject,
        'body': body,
      },
    );

    // if (await Launch(_emailLaunchUri.toString())) {
    // await launch(_emailLaunchUri.toString());
    // } else {
    // }
    launchUrl(emailLaunchUri);
  }
}
