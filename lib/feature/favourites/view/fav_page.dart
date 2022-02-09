import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tidal_ui_clone/core/components/widgets/custom_icon_button.dart';
import 'package:tidal_ui_clone/core/components/widgets/custom_stacked_slider.dart';
import 'package:tidal_ui_clone/core/components/widgets/text_icon_appbar.dart';
import 'package:tidal_ui_clone/core/components/widgets/title_row.dart';
import 'package:tidal_ui_clone/feature/navigation/view/custom_navigation_bar.dart';

import '../../../providers/image_slider_model_provider.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TextIconAppBar(
        title: 'My Collection',
        icon: Icons.settings,
      ),
      bottomNavigationBar: const CustomNavigationBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomIconButton(
              icon: Icons.radio_outlined,
              label: 'Mixes & Radio',
            ),
            const CustomIconButton(
              icon: Icons.audiotrack_outlined,
              label: 'Playlists',
            ),
            const CustomIconButton(
              icon: Icons.album,
              label: 'Albums',
            ),
            const CustomIconButton(
              icon: Icons.multitrack_audio,
              label: 'Tracks',
            ),
            const CustomIconButton(
              icon: Icons.video_label,
              label: 'Videos',
            ),
            const CustomIconButton(
              icon: Icons.mic_none,
              label: 'Artists',
            ),
            const CustomIconButton(
              icon: Icons.download_rounded,
              label: 'Downloaded',
            ),
            const SizedBox(height: 30),
            const TitleRow(title: 'Recent Activity'),
            HookConsumer(
              builder: (context, ref, child) => ref
                  .watch(imageSliderModelProviderRef('recent activity'))
                  .maybeWhen(
                    data: (model) => CustomStackedSlider(models: model),
                    orElse: () => const Center(child: LinearProgressIndicator()),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
