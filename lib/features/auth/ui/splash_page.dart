import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/router/router.gr.dart';
import 'cubit/auth_cubit.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        state.map(
          authenticating: (s) => null,
          authenticated: (s) =>
              AutoRouter.of(context).replace(const HomeRoute()),
          unauthenticated: (s) =>
              AutoRouter.of(context).replace(const LoginRoute()),
        );
      },
      child: const Scaffold(
        body: CircularProgressIndicator(),
      ),
    );
  }
}
