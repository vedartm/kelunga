import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'app.dart';
import 'core/injection/injection.dart';
import 'core/util/bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies(Environment.prod);
  await Firebase.initializeApp();
  Bloc.observer = getIt<MyBlocObserver>();
  runApp(const MyApp());
}
