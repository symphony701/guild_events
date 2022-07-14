import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guild_events/helpers/responsive_helper.dart';
import 'package:guild_events/ui/colors/colors.dart';
import 'package:guild_events/ui/pages/home/main_home/widgets/circle_stack.dart';

class PopularGuildCard extends StatelessWidget {
  const PopularGuildCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: responsive.wp(3)),
      height: responsive.hp(27),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(responsive.dp(2)),
          color: Colores.blanco),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: responsive.wp(3), vertical: responsive.hp(1)),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(responsive.dp(3)),
                color: Colores.blanco,
              ),
              width: double.infinity,
              height: responsive.hp(17),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(responsive.dp(2)),
                child: Image(
                  image: NetworkImage(
                      'https://c.tenor.com/PcnDX7QUiP8AAAAd/anime-girl.gif'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: responsive.dp(1.5),
            ),
            Expanded(
              child: Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: responsive.dp(16),
                        child: AutoSizeText(
                          'El culto de las lolis',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.poppins(
                            fontSize: responsive.dp(1.7),
                            fontWeight: FontWeight.w600,
                            color: Colores.azul,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: responsive.dp(1),
                      ),
                      SizedBox(
                        width: responsive.dp(16),
                        child: AutoSizeText(
                          'Genshin Impact',
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.poppins(
                            fontSize: responsive.dp(1.5),
                            fontWeight: FontWeight.w400,
                            color: Colores.gris,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Expanded(child: SizedBox()),
                  const CircleStack(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
