import 'package:auto_route/auto_route.dart';
import 'package:duration/duration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/ui/dimens.dart';
import '../../../player/ui/cubit/player_cubit.dart';
import '../../models/audio.dart';

class SingleItem extends StatelessWidget {
  const SingleItem({
    Key? key,
    required this.single,
    required this.album,
  }) : super(key: key);

  final Single single;
  final Album album;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: KDimens.padding),
          child: const Divider(),
        ),
        ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: KDimens.padding,
            vertical: 8,
          ),
          onTap: () {
            context.read<PlayerCubit>().playAudio(single);
            AutoRouter.of(context).pop();
          },
          leading: Icon(Icons.play_circle_fill_rounded, size: 48),
          title: Text(single.name),
          subtitle: Text(
            printDuration(single.duration),
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
      ],
    );
  }
}
