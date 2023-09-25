import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:http/io_client.dart';

//This sets the io userAgent so redirect will have same userAgent
Client userAgentClient({
  final String? userAgent = 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)',
}) {
  if (!kIsWeb) {
    final innerClient = HttpClient()..userAgent = userAgent;
    return IOClient(innerClient);
  } else {
    return Client();
  }
}
