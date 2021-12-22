import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/ui/colors.dart';
import '../../../../core/ui/dimens.dart';
import '../../../../core/ui/progress_bar.dart';
import '../../../../core/ui/spacers.dart';
import '../../../../core/ui/widgets.dart';
import '../cubit/player_cubit.dart';

class PlayerWidget extends StatefulWidget {
  const PlayerWidget({Key? key}) : super(key: key);

  @override
  _PlayerWidgetState createState() => _PlayerWidgetState();
}

class _PlayerWidgetState extends State<PlayerWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PlayerCubit, PlayerState>(
      listener: (context, state) =>
          state.isPlaying ? _controller.forward() : _controller.reverse(),
      builder: (context, state) => state.currentAudio.fold(
        () => const SizedBox(),
        (a) => Container(
          padding: const EdgeInsets.all(KDimens.padding),
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(KDimens.borderRadius),
                  child: CachedNetworkImage(
                    imageUrl: a.artUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              KSpacers.width20,
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      a.name,
                      style: Theme.of(context).textTheme.subtitle2,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    KSpacers.height4,
                    Text(
                      a.albumName ?? a.authorName,
                      maxLines: 1,
                      style: Theme.of(context).textTheme.bodyText2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    KSpacers.height16,
                    ProgressBar(
                      baseBarColor: KColors.textSecondary.withOpacity(0.5),
                      progressBarColor: KColors.textPrimary,
                      bufferedBarColor: KColors.textPrimary.withOpacity(0.4),
                      thumbRadius: 0,
                      progress: state.position.fold(
                        () => const Duration(),
                        (a) => a,
                      ),
                      buffered: state.bufferedPosition.fold(
                        () => null,
                        (a) => a,
                      ),
                      timeLabelLocation: TimeLabelLocation.none,
                      total: a.duration,
                      isSeekEnabled: false,
                      timeLabelTextStyle: Theme.of(context).textTheme.overline,
                    ),
                  ],
                ),
              ),
              KSpacers.width20,
              state.isLoading
                  ? const Padding(
                      padding: EdgeInsets.all(KDimens.padding),
                      child: KLoader(),
                    )
                  : IconButton(
                      icon: AnimatedIcon(
                        icon: AnimatedIcons.play_pause,
                        size: 32,
                        progress: _controller,
                      ),
                      onPressed: () =>
                          context.read<PlayerCubit>().changePlayingState(),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
