import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

void launchweb({required String url}) async {
  final Uri _url = Uri.parse('${url}');

  try {
    // ignore: deprecated_member_use
    await launch(_url.toString());
  } catch (e) {
    print(e);
  }
}
