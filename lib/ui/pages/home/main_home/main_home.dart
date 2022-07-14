import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guild_events/helpers/responsive_helper.dart';
import 'package:guild_events/ui/colors/colors.dart';
import 'package:guild_events/ui/pages/home/main_home/widgets/games_view_main_home.dart';
import 'package:guild_events/ui/pages/home/main_home/widgets/popular_guilds_view.dart';
import 'package:guild_events/ui/pages/home/main_home/widgets/searcher_main_home.dart';
import 'package:guild_events/ui/pages/home/main_home/widgets/top_data.dart';

class MainHomePage extends StatefulWidget {
  MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        height: responsive.hp(90),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: responsive.hp(55),
                  width: responsive.wp(100),
                  color: Colores.azul,
                ),
              ],
            ),
            Positioned(
              top: responsive.hp(10),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: responsive.wp(7),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TopDataMainHome(),
                        SizedBox(
                          height: responsive.hp(5),
                        ),
                        SizedBox(
                          width: responsive.wp(86),
                          child: AutoSizeText(
                            'Join your guild or explore others',
                            style: GoogleFonts.poppins(
                              fontSize: responsive.dp(2.1),
                              fontWeight: FontWeight.w600,
                              color: Colores.blanco,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: responsive.hp(5),
                        ),
                        SearchMainHome(),
                        SizedBox(
                          height: responsive.hp(4),
                        ),
                        SizedBox(
                          width: responsive.wp(86),
                          child: AutoSizeText(
                            'Popular guilds',
                            style: GoogleFonts.poppins(
                              fontSize: responsive.dp(2.1),
                              fontWeight: FontWeight.w600,
                              color: Colores.blanco,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: responsive.hp(4),
                        ),
                      ],
                    ),
                  ),
                  PopularGuildsView(),
                  SizedBox(
                    height: responsive.hp(1),
                  ),
                  SizedBox(
                    width: responsive.wp(86),
                    child: AutoSizeText(
                      'Games',
                      style: GoogleFonts.poppins(
                        fontSize: responsive.dp(2.1),
                        fontWeight: FontWeight.w600,
                        color: Colores.azul,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: responsive.hp(2),
                  ),
                  GamesViewMainHome(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
