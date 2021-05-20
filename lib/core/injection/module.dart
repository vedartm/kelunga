import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@module
abstract class MyModule {
  @lazySingleton
  FirebaseAnalytics get analytics => FirebaseAnalytics();

  @lazySingleton
  FirebaseFirestore get firestore => FirebaseFirestore.instance;

  @lazySingleton
  FirebaseAuth get auth => FirebaseAuth.instance;

  // @lazySingleton
  // FirebaseMessaging get messaging => FirebaseMessaging.instance;

  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn();

  @dev
  @lazySingleton
  Logger get loggerDev =>
      Logger(printer: PrettyPrinter(lineLength: 80, methodCount: 1));

  @prod
  @lazySingleton
  Logger get loggerProd => Logger(printer: null);
}
