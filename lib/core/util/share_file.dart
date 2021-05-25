import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share/share.dart';

Future<void> shareFile(String url) async {
  var request = await HttpClient().getUrl(Uri.parse(url));
  var response = await request.close();
  final bytes = await consolidateHttpClientResponseBytes(response);
  final tempDir = await getTemporaryDirectory();

  final file = await File('${tempDir.path}/image.jpg').create();

  file.writeAsBytesSync(bytes);

  Share.shareFiles(
    ['${tempDir.path}/image.jpg'],
    text: "Hey! Download the app and use this referral code.",
  );
}
