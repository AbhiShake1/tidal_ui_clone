import 'package:flutter/cupertino.dart' show CupertinoIcons;
import 'package:flutter/material.dart';
import 'package:tidal_ui_clone/core/components/widgets/custom_stacked_slider.dart';
import 'package:tidal_ui_clone/feature/navigation/view/custom_navigation_bar.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../core/components/widgets/custom_icon_button.dart';
import '../../../core/components/widgets/title_row.dart';
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
        children: const [
          TitleRow(
            title: 'Genres',
            showButton: true,
            buttonTitle: 'VIEW AS LIST',
          ),
          GenreScroller(
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
          SizedBox(height: 20),
          TitleRow(title: 'Moods, Activities & Events'),
          GenreScroller(
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
          SizedBox(height: 20),
          CustomIconButton(
            label: 'New',
            icon: Icons.calendar_today_outlined,
          ),
          CustomIconButton(
            label: 'Top',
            icon: Icons.hourglass_top_outlined,
          ),
          CustomIconButton(
            label: 'Staff Picks',
            icon: Icons.star_border_rounded,
          ),
          CustomIconButton(
            label: 'Shows & Podcasts',
            icon: Icons.podcasts_rounded,
          ),
          CustomIconButton(
            label: 'TIDAL Rising',
            icon: Icons.tour_outlined,
          ),
          CustomIconButton(
            label: 'Clean Content',
            icon: Icons.class_,
          ),
          SizedBox(height: 60),
          TitleRow(title: 'Suggested Albums for You'),
          CustomStackedSlider(),
          TitleRow(title: 'Suggested Artists for You'),
          CustomStackedSlider(isCircular: true),
        ],
      ).pOnly(left: 15),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}
