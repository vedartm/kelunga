import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'app.dart';
import 'core/injection/injection.dart';
import 'core/util/bloc_observer.dart';

void main() {
  configureDependencies(Environment.dev);
  Bloc.observer = getIt<MyBlocObserver>();
  runApp(const MyApp());
}
