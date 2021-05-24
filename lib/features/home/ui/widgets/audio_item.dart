import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/router/router.gr.dart';
import '../../../../core/ui/dimens.dart';
import '../../../../core/ui/widgets.dart';
import '../../../../core/util/extensions.dart';
import '../../../player/ui/cubit/player_cubit.dart';
import '../../models/audio.dart';

class AudioItem extends StatelessWidget {
  const AudioItem({
    Key? key,
    required this.audio,
  }) : super(key: key);

  final Audio audio;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => audio.map(
        single: (s) => context.read<PlayerCubit>().playAudio(s),
        album: (s) => AutoRouter.of(context).push(AlbumRoute(album: s)),
      ),
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          padding: const EdgeInsets.all(KDimens.padding),
          // alignment: Alignment.bottomLeft,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(KDimens.borderRadius),
            image: DecorationImage(
              // colorFilter: ColorFilter.mode(
              //   Colors.black.withOpacity(0.2),
              //   BlendMode.dstATop,
              // ),
              image: CachedNetworkImageProvider(audio.artUrl),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              audio.map(
                single: (s) => Align(
                  alignment: Alignment.topRight,
                  child: KBadge(label: s.duration.formatInMinutes()),
                ),
                album: (s) => const SizedBox(),
              ),
              const Spacer(),
              Text(
                '${audio.name} is awesome',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
