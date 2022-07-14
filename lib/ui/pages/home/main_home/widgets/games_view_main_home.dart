import 'package:flutter/material.dart';
import 'package:guild_events/helpers/responsive_helper.dart';
import 'package:guild_events/ui/colors/colors.dart';
import 'package:guild_events/ui/pages/home/main_home/widgets/game_main_home.dart';

class GamesViewMainHome extends StatefulWidget {
  GamesViewMainHome({Key? key}) : super(key: key);

  @override
  State<GamesViewMainHome> createState() => _GamesViewMainHomeState();
}

class _GamesViewMainHomeState extends State<GamesViewMainHome> {
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return SizedBox(
      width: responsive.wp(86),
      height: responsive.dp(6.5),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          GameMainHome(),
          GameMainHome(),
          GameMainHome(),
          GameMainHome(),
          GameMainHome(),
        ],
      ),
    );
  }
}
