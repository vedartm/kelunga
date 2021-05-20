import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/ui/dimens.dart';
import '../../../player/ui/cubit/player_cubit.dart';
import '../../models/story.dart';

class AudioItem extends StatelessWidget {
  const AudioItem({
    Key? key,
    required this.audio,
  }) : super(key: key);

  final Story audio;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.read<PlayerCubit>().playAudio(audio),
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          padding: const EdgeInsets.all(KDimens.padding),
          alignment: Alignment.bottomLeft,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(KDimens.borderRadius),
            image: DecorationImage(
              // colorFilter: ColorFilter.mode(
              //   Colors.black.withOpacity(0.2),
              //   BlendMode.dstATop,
              // ),
              image: CachedNetworkImageProvider(audio.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
          child: Text(
            audio.name,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
