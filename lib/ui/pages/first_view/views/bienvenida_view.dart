import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guild_events/helpers/responsive_helper.dart';
import 'package:guild_events/ui/colors/colors.dart';

class BienvenidaView extends StatelessWidget {
  const BienvenidaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Positioned(
              top: -150,
              right: -150,
              child: Container(
                width: responsive.dp(35),
                height: responsive.dp(35),
                decoration: BoxDecoration(
                  color: Colores.azul,
                  borderRadius: BorderRadius.circular(responsive.dp(50)),
                ),
              )),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: responsive.dp(2)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutoSizeText(
                    'Better organization, better rewards for your guild/group',
                    maxLines: 5,
                    style: GoogleFonts.poppins(
                      fontSize: responsive.dp(5),
                      fontWeight: FontWeight.bold,
                      color: Colores.naranja,
                    ),
                  ),
                  SizedBox(height: responsive.dp(2)),
                  AutoSizeText(
                    'Guild Events is a simple app to help you organize your guild or group events in any game',
                    maxLines: 4,
                    style: GoogleFonts.poppins(
                      fontSize: responsive.dp(3),
                      fontWeight: FontWeight.w600,
                      color: Colores.azul,
                    ),
                  ),
                  SizedBox(height: responsive.dp(2)),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Swipe to continue',
                          style: GoogleFonts.poppins(
                            fontSize: responsive.dp(2),
                            fontWeight: FontWeight.bold,
                            color: Colores.naranja,
                          ),
                        ),
                        SizedBox(width: responsive.dp(1)),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colores.naranja,
                          size: responsive.dp(2),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
