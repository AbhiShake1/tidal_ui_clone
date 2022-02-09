import 'package:flutter/cupertino.dart' show CupertinoIcons;
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tidal_ui_clone/core/components/widgets/custom_stacked_slider.dart';
import 'package:tidal_ui_clone/feature/navigation/view/custom_navigation_bar.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../core/components/widgets/custom_icon_button.dart';
import '../../../core/components/widgets/title_row.dart';
import '../../../providers/image_slider_model_provider.dart';
import 'genre_scroller.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            margin: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: Row(
              children: [
                const Icon(
                  CupertinoIcons.search,
                  color: Colors.black,
                ).pOnly(left: 20, right: 10),
                'Search'
                    .text
                    .color(Colors.black.withOpacity(0.51))
                    .semiBold
                    .scale(1.2)
                    .make(),
              ],
            ),
          ).expand(),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const TitleRow(
            title: 'Genres',
            showButton: true,
            buttonTitle: 'VIEW AS LIST',
          ),
          const GenreScroller(
            genre1: [
              'Decades',
              'R&B/Soul',
              'Jazz',
              'Classical',
              'Latin',
              'Electronic',
              'Gospel/Christian',
              'Metal',
              'Soundtracks',
              'Folk/America',
              'Legacy'
            ],
            //List.generate(11, (index) => 'Text'),
            genre2: [
              'Hip-Hop',
              'Pop',
              'Rock/Indie',
              'Reggae/Dancehall',
              'Dance',
              'K-Pop',
              'Africa',
              'Country',
              'Kids',
              'Blues',
              'Global',
              'Comedy'
            ],
            //List.generate(11, (index) => 'Text2'),
          ),
          const SizedBox(height: 20),
          const TitleRow(title: 'Moods, Activities & Events'),
          const GenreScroller(
            genre1: [
              'Black History',
              'Wellness',
              'Focus',
              'Romance',
              'For DJs',
              'Wedding',
              'HBCU',
              'Mental Health',
              'Credits',
              'Native American',
              'Holidays'
            ],
            genre2: [
              'Winter',
              'Party',
              'Workout',
              'Relax',
              'Live',
              'Verzuz TV',
              'Sound Booth',
              'Pride',
              'At Home',
              'Social Justice',
              'Autumn',
            ],
          ),
          const SizedBox(height: 20),
          const CustomIconButton(
            label: 'New',
            icon: Icons.calendar_today_outlined,
          ),
          const CustomIconButton(
            label: 'Top',
            icon: Icons.hourglass_top_outlined,
          ),
          const CustomIconButton(
            label: 'Staff Picks',
            icon: Icons.star_border_rounded,
          ),
          const CustomIconButton(
            label: 'Shows & Podcasts',
            icon: Icons.settings_input_antenna,
          ),
          const CustomIconButton(
            label: 'TIDAL Rising',
            icon: Icons.tour_outlined,
          ),
          const CustomIconButton(
            label: 'Clean Content',
            icon: Icons.class_,
          ),
          const SizedBox(height: 60),
          const TitleRow(title: 'Suggested Albums for You'),
          HookConsumer(
            builder: (context, ref, child) => ref
                .watch(imageSliderModelProviderRef('suggested albums for you'))
                .maybeWhen(
                  data: (model) => CustomStackedSlider(models: model),
                  orElse: () => const Center(child: LinearProgressIndicator()),
                ),
          ),
          const TitleRow(title: 'Suggested Artists for You'),
          HookConsumer(
            builder: (context, ref, child) => ref
                .watch(imageSliderModelProviderRef('suggested artists for you'))
                .maybeWhen(
                  data: (model) => CustomStackedSlider(
                    models: model,
                    isCircular: true,
                  ),
                  orElse: () => const Center(child: LinearProgressIndicator()),
                ),
          ),
        ],
      ).pOnly(left: 15),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}
