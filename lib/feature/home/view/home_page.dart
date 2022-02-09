import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tidal_ui_clone/core/components/widgets/custom_stacked_slider.dart';
import 'package:tidal_ui_clone/core/components/widgets/text_icon_appbar.dart';
import 'package:tidal_ui_clone/feature/navigation/view/custom_navigation_bar.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../core/components/widgets/title_row.dart';
import '../../../providers/image_slider_model_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TextIconAppBar(
        title: 'Home',
        icon: Icons.notifications_none_rounded,
      ),
      bottomNavigationBar: const CustomNavigationBar(),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          20.heightBox,
          const TitleRow(title: 'Recently Played'),
          HookConsumer(
            builder: (context, ref, child) => ref
                .watch(imageSliderModelProviderRef('recently played'))
                .maybeWhen(
                  data: (model) => CustomStackedSlider(models: model),
                  orElse: () => const SizedBox(height: 150, width: 150).shimmer(),
                ),
          ),
          const TitleRow(title: 'For You'),
          HookConsumer(
            builder: (context, ref, child) =>
                ref.watch(imageSliderModelProviderRef('for you')).maybeWhen(
                      data: (model) => CustomStackedSlider(
                        models: model,
                        isForYouView: true,
                      ),
                      orElse: () => const Center(child: LinearProgressIndicator()),
                    ),
          ),
          const TitleRow(
            title: 'Mixes For You',
            showButton: true,
          ),
          HookConsumer(
            builder: (context, ref, child) =>
                ref.watch(imageSliderModelProviderRef('mixes for you')).maybeWhen(
                      data: (model) => CustomStackedSlider(
                        models: model,
                        maxLines: 2,
                        showCenteredPlayer: true,
                      ),
                      orElse: () => const Center(child: LinearProgressIndicator()),
                    ),
          ),
          const TitleRow(title: 'Because You Listened to Astrid S'),
          HookConsumer(
            builder: (context, ref, child) => ref
                .watch(imageSliderModelProviderRef('because you listened to'))
                .maybeWhen(
                  data: (model) => CustomStackedSlider(
                    models: model,
                    maxLines: 2,
                    isCircular: true,
                  ),
                  orElse: () => const Center(child: LinearProgressIndicator()),
                ),
          ),
        ],
      ).pOnly(left: 15),
    );
  }
}
