import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guild_events/helpers/responsive_helper.dart';
import 'package:guild_events/ui/colors/colors.dart';

class GameMainHome extends StatelessWidget {
  const GameMainHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: responsive.wp(3)),
      height: responsive.dp(1.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(responsive.dp(2)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: responsive.dp(1)),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colores.naranja,
              radius: responsive.dp(2.5),
              backgroundImage: NetworkImage(
                  'https://play-lh.googleusercontent.com/ws8LZl1e5sv7Xm4OO2BS8iBC38QO1K3mJycTv7jfX9nQpMSS5vLLI2i3piV9m3LFhA=w240-h480-rw'),
            ),
            SizedBox(width: responsive.dp(2)),
            SizedBox(
              width: responsive.wp(30),
              child: AutoSizeText('Genshin Impact',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: GoogleFonts.poppins(
                    fontSize: responsive.dp(2.1),
                    fontWeight: FontWeight.w500,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
