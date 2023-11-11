import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class Launch {
  static Launch instance = Launch();

  void launchweb({required String url}) async {
    final _url = Uri.parse('${url}');

    try {
      await launchUrl(_url);
    } catch (e) {
      print(e);
    }
  }

  void launchEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'shanjohn5308@gmail.com',
      queryParameters: {
        'subject': "",
        'body': "",
      },
    );

    launchUrl(emailLaunchUri);
  }

  void launchWhatsapp({required String number,}) async {
    final Uri _url = Uri.parse('https://wa.me/91$number?text=');

    await launchUrl(_url);
  }

// launch instagram web using launche url //
  void launchInstagram({required String instagramid}) async {
    final Uri _url =
        Uri.parse('https://www.instagram.com/direct/t/${instagramid}');
    
    await launchUrl(_url);
  }
}
