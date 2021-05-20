import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/router/router.gr.dart';
import '../../../core/ui/spacers.dart';
import 'cubit/auth_cubit.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            'assets/images/login.png',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'We are what we do',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          KSpacers.height16,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Thousands of people use kelunga and enjoy meditating',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          KSpacers.height32,
          KSpacers.height32,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ElevatedButton(
              onPressed: () async {
                final result =
                    await context.read<AuthCubit>().signInWithGoogle();
                if (result) {
                  AutoRouter.of(context).replace(HomeRoute());
                }
              },
              child: Text('CONTINUE WITH GOOGLE'),
            ),
          ),
          // KSpacers.height16,
          // TextButton(
          //   onPressed: () => AutoRouter.of(context).replace(HomeRoute()),
          //   child: Text('Skip'),
          // ),
          KSpacers.height40,
          KSpacers.height24,
        ],
      ),
    );
  }
}
