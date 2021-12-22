import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/injection/injection.dart';
import '../../../core/ui/dimens.dart';
import '../../../core/ui/spacers.dart';
import '../../../core/ui/widgets.dart';
import '../models/audio.dart';
import 'cubit/album/album_cubit.dart';
import 'widgets/single_item.dart';

class AlbumPage extends StatelessWidget {
  const AlbumPage({Key? key, required this.album}) : super(key: key);

  final Album album;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            expandedHeight: MediaQuery.of(context).size.width - 60,
            flexibleSpace: Container(
              height: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: KDimens.padding),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(KDimens.borderRadius),
                  bottomRight: Radius.circular(KDimens.borderRadius),
                ),
                image: DecorationImage(
                  image: CachedNetworkImageProvider(album.artUrl),
                  fit: BoxFit.cover,
                ),
              ),
              child: SafeArea(
                child: Row(
                  children: [
                    KIconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () => AutoRouter.of(context).pop(),
                    ),
                    KSpacers.width20,
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: KDimens.padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  KSpacers.height32,
                  Text(
                    album.name,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  KSpacers.height16,
                  Text(
                    album.description,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  KSpacers.height32,
                ],
              ),
            ),
          ),
          BlocBuilder<AlbumCubit, AlbumState>(
            bloc: getIt()..fetchSingles(album),
            builder: (context, state) => state.map(
              failed: (s) => const SliverToBoxAdapter(child: KError()),
              loading: (s) => const SliverToBoxAdapter(child: KLoader()),
              success: (s) => SliverList(
                delegate: SliverChildListDelegate(
                  List.generate(
                    s.singles.length,
                    (index) => SingleItem(
                      single: s.singles[index],
                      album: album,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
