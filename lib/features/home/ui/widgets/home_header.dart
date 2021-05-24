import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/injection/injection.dart';
import '../../../../core/router/router.gr.dart';
import '../../../../core/ui/dimens.dart';
import '../../../../core/ui/spacers.dart';
import '../../../../core/ui/widgets.dart';
import '../../../auth/ui/cubit/auth_cubit.dart';
import '../../models/banner.dart' as m;
import '../../repo/home_repo.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        KSpacers.height40,
        BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) => Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              KSpacers.width20,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    state.maybeMap(
                      orElse: () => Text(
                        'Good ${greeting()}, Guest',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      authenticated: (s) => Text(
                        'Good ${greeting()}, ${s.user.name.split(' ')[0]}',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ),
                    KSpacers.height8,
                    Text(
                      'We wish you have a good day!',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
              KSpacers.width16,
              state.maybeMap(
                orElse: () => InkWell(
                  onTap: () => AutoRouter.of(context).push(LoginRoute()),
                  child: CircleAvatar(radius: 22),
                ),
                authenticated: (s) => InkWell(
                  onTap: () => AutoRouter.of(context).push(ProfileRoute()),
                  child: CircleAvatar(
                    radius: 22,
                    backgroundImage:
                        CachedNetworkImageProvider(s.user.avatarUrl),
                  ),
                ),
              ),
              KSpacers.width20,
            ],
          ),
        ),
        KSpacers.height40,
        FutureBuilder<Either<Failure, List<m.Banner>>>(
          future: getIt<IHomeRepo>().getBanners(),
          builder: (context, snapshot) {
            final carouselOptions = CarouselOptions(
              aspectRatio: 2,
              autoPlay: true,
              viewportFraction: 1,
              autoPlayInterval: Duration(seconds: 3),
            );
            if (snapshot.connectionState == ConnectionState.waiting) {
              return KLoader();
            }
            return snapshot.data?.fold(
                  (l) => const SizedBox(),
                  (r) => CarouselSlider(
                    options: carouselOptions,
                    items: r
                        .map(
                          (i) => Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: KDimens.padding),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(KDimens.borderRadius),
                              child: CachedNetworkImage(
                                width: double.infinity,
                                imageUrl: i.imageUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ) ??
                const SizedBox();
          },
        ),
        KSpacers.height40,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: KDimens.padding),
          child: Text(
            'Popular',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ],
    );
  }

  String greeting() {
    final hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Morning';
    }
    if (hour < 17) {
      return 'Afternoon';
    }
    // if (hour < 21) {
    //   return 'Evening';
    // }
    return 'Evening';
  }
}
