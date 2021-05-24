import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../../core/injection/injection.dart';
import '../../../core/ui/colors.dart';
import '../../../core/ui/dimens.dart';
import '../../../core/ui/widgets.dart';
import '../../player/ui/cubit/player_cubit.dart';
import '../../player/ui/player_page.dart';
import '../../player/ui/widgets/player_widget.dart';
import 'cubit/home_cubit.dart';
import 'widgets/audio_item.dart';
import 'widgets/home_header.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PanelController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PanelController();
  }

  @override
  Widget build(BuildContext context) {
    return AudioServiceWidget(
      child: WillPopScope(
        onWillPop: () async {
          if (_controller.isPanelOpen) {
            _controller.close();
            return false;
          }
          return true;
        },
        child: Scaffold(
          body: BlocListener<PlayerCubit, PlayerState>(
            listener: (context, state) {
              state.currentAudio.fold(
                _controller.hide,
                (a) {
                  if (!_controller.isPanelShown) _controller.show();
                },
              );
            },
            child: SlidingUpPanel(
              color: KColors.secondary,
              boxShadow: [
                BoxShadow(
                  offset: Offset(2, -6),
                  blurRadius: 16,
                  color: Color(0xFF54575C).withOpacity(0.2),
                ),
              ],
              maxHeight: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.top,
              controller: _controller,
              panel: PlayerPage(controller: _controller),
              collapsed: InkWell(
                onTap: _controller.open,
                child: const PlayerWidget(),
              ),
              borderRadius: BorderRadius.circular(KDimens.borderRadius),
              body: SafeArea(
                child: BlocBuilder<HomeCubit, HomeState>(
                  bloc: getIt()..fetchStories(),
                  builder: (context, state) => state.map(
                    failed: (s) => const KError(),
                    loading: (s) => const KLoader(),
                    success: (s) => CustomScrollView(
                      slivers: [
                        SliverToBoxAdapter(child: const HomeHeader()),
                        SliverPadding(
                          padding: const EdgeInsets.all(KDimens.padding),
                          sliver: SliverGrid.count(
                            crossAxisCount: 2,
                            mainAxisSpacing: KDimens.padding,
                            crossAxisSpacing: KDimens.padding,
                            children: List.generate(
                              s.audios.length,
                              (index) => AudioItem(audio: s.audios[index]),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
