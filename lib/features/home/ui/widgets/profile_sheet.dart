import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/router/router.gr.dart';
import '../../../../core/ui/spacers.dart';
import '../../../auth/ui/cubit/auth_cubit.dart';

class ProfileSheet extends StatelessWidget {
  const ProfileSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) => state.maybeMap(
        orElse: () => const SizedBox(),
        authenticated: (s) => Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            KSpacers.height40,
            Center(
              child: CircleAvatar(
                backgroundImage: CachedNetworkImageProvider(s.user.avatarUrl),
                radius: 40,
              ),
            ),
            KSpacers.height24,
            Text(
              s.user.name,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline6,
            ),
            KSpacers.height8,
            Text(
              s.user.email,
              textAlign: TextAlign.center,
            ),
            KSpacers.height24,
            KSpacers.height24,
            TextButton.icon(
              onPressed: () async {
                await context.read<AuthCubit>().signOut();
                Navigator.of(context).pop();
                AutoRouter.of(context).replace(const LoginRoute());
              },
              icon: const Icon(Icons.logout),
              label: const Text('SIGN OUT'),
            ),
            KSpacers.height40,
          ],
        ),
      ),
    );
  }
}
