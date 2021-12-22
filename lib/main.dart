import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:just_audio_background/just_audio_background.dart';

import 'app.dart';
import 'core/injection/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies(Environment.prod);
  await Firebase.initializeApp();
  await JustAudioBackground.init(
    androidNotificationChannelId: 'app.kelunga.channel.audio',
    androidNotificationChannelName: 'Audio playback',
    androidNotificationOngoing: true,
  );
  runApp(const MyApp());
}
