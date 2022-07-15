import 'package:flutter/material.dart';
import 'package:guild_events/helpers/responsive_helper.dart';
import 'package:guild_events/ui/pages/home/main_home/widgets/popular_guild.dart';

class PopularGuildsView extends StatefulWidget {
  PopularGuildsView({Key? key}) : super(key: key);

  @override
  State<PopularGuildsView> createState() => _PopularGuildsViewState();
}

class _PopularGuildsViewState extends State<PopularGuildsView> {
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Container(
      height: responsive.dp(26),
      width: responsive.wp(100),
      child: PageView(
        controller: PageController(
          viewportFraction: 0.77,
        ),
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        children: [
          PopularGuildCard('a'),
          PopularGuildCard('b'),
          PopularGuildCard('c'),
          PopularGuildCard('d'),
        ],
      ),
    );
  }
}
