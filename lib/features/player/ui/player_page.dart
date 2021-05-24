import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../../core/ui/colors.dart';
import '../../../core/ui/dimens.dart';
import '../../../core/ui/progress_bar.dart';
import '../../../core/ui/spacers.dart';
import '../../../core/ui/widgets.dart';
import 'cubit/player_cubit.dart';

class PlayerPage extends StatefulWidget {
  const PlayerPage({Key? key, required this.controller}) : super(key: key);
  final PanelController controller;

  @override
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage>
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
      duration: Duration(milliseconds: 300),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PlayerCubit, PlayerState>(
      listener: (context, state) =>
          state.isPlaying ? _controller.forward() : _controller.reverse(),
      builder: (context, state) => state.currentAudio.fold(
        () => const SizedBox(),
        (a) => Column(
          children: [
            KSpacers.height20,
            Row(
              children: [
                KIconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    print('Closing');
                    widget.controller.close();
                  },
                ),
                KSpacers.width20,
              ],
            ),
            const Spacer(),
            Text(
              a.name,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline5,
            ),
            if (a.albumName != null) ...[
              KSpacers.height16,
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: KDimens.padding),
                child: Text(
                  a.albumName?.toUpperCase() ?? '',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2
                      ?.copyWith(color: KColors.textSecondary),
                ),
              ),
            ],
            KSpacers.height16,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: KDimens.padding),
              child: Text(
                a.description,
                textAlign: TextAlign.center,
              ),
            ),
            KSpacers.height40,
            KSpacers.height24,
            RawMaterialButton(
              onPressed: () => context.read<PlayerCubit>().changePlayingState(),
              elevation: 0,
              fillColor: KColors.textPrimary,
              child: AnimatedIcon(
                icon: AnimatedIcons.play_pause,
                size: 32,
                color: Colors.white,
                progress: _controller,
              ),
              padding: EdgeInsets.all(32.0),
              shape: CircleBorder(
                side: BorderSide(
                  color: Color(0xFFBABCC6),
                  width: 12,
                ),
              ),
            ),
            KSpacers.height24,
            KSpacers.height24,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: ProgressBar(
                baseBarColor: KColors.textSecondary.withOpacity(0.5),
                progressBarColor: KColors.textPrimary,
                bufferedBarColor: KColors.textPrimary.withOpacity(0.4),
                thumbRadius: 20,
                progress: state.position.fold(
                  () => const Duration(),
                  (a) => a,
                ),
                buffered: state.bufferedPosition.fold(
                  () => null,
                  (a) => a,
                ),
                timeLabelLocation: TimeLabelLocation.below,
                total: a.duration,
                isSeekEnabled: false,
                timeLabelTextStyle: Theme.of(context).textTheme.subtitle2,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
