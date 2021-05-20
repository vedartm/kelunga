import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/router/router.gr.dart';
import '../../../core/ui/dimens.dart';
import '../../../core/ui/spacers.dart';
import '../../auth/ui/cubit/auth_cubit.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) => state.maybeMap(
          orElse: () => const SizedBox(),
          authenticated: (s) => CustomScrollView(
            slivers: [
              SliverAppBar(toolbarHeight: 72),
              SliverPadding(
                padding: const EdgeInsets.all(KDimens.padding),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    Center(
                      child: CircleAvatar(
                        backgroundImage:
                            CachedNetworkImageProvider(s.user.avatarUrl),
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
                        AutoRouter.of(context).pop();
                        AutoRouter.of(context).replace(LoginRoute());
                      },
                      icon: const Icon(Icons.logout),
                      label: const Text('Sign out'),
                    )
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
