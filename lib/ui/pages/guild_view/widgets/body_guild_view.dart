import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guild_events/helpers/responsive_helper.dart';
import 'package:guild_events/ui/colors/colors.dart';
import 'package:guild_events/ui/pages/home/main_home/widgets/circle_stack.dart';
import 'package:readmore/readmore.dart';

class BodyGuildView extends StatefulWidget {
  BodyGuildView({Key? key}) : super(key: key);

  @override
  State<BodyGuildView> createState() => _BodyGuildViewState();
}

class _BodyGuildViewState extends State<BodyGuildView> {
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Container(
      width: responsive.wp(100),
      height: responsive.hp(60),
      padding: EdgeInsets.only(
        left: responsive.wp(5),
        right: responsive.wp(5),
        top: responsive.hp(4),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(responsive.wp(10)),
          topRight: Radius.circular(responsive.wp(10)),
        ),
      ),
      child: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          height: responsive.hp(56),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: responsive.dp(27),
                    child: AutoSizeText(
                      'El culto de las lolis',
                      maxLines: 2,
                      minFontSize: 15,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                        fontSize: responsive.dp(2.5),
                        fontWeight: FontWeight.w600,
                        color: Colores.azul,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: responsive.wp(5),
                  ),
                  Container(
                    width: responsive.dp(10),
                    child: Center(
                      child: AutoSizeText(
                        'Disjoin',
                        style: GoogleFonts.poppins(
                          fontSize: responsive.dp(2.2),
                          fontWeight: FontWeight.w600,
                          color: Colores.azul,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colores.amarillo,
                      borderRadius: BorderRadius.circular(responsive.wp(5)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: responsive.hp(2),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: responsive.wp(50),
                    //height: responsive.hp(20),
                    child: Row(
                      children: [
                        AutoSizeText(
                          '11,4K',
                          style: GoogleFonts.poppins(
                            fontSize: responsive.dp(1.9),
                            fontWeight: FontWeight.w600,
                            color: Colores.azul,
                          ),
                        ),
                        AutoSizeText(
                          ' People are joined:',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            color: Colores.azul,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CircleStack(),
                ],
              ),
              SizedBox(
                height: responsive.hp(2),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FaIcon(
                    FontAwesomeIcons.gamepad,
                    size: responsive.dp(3),
                  ),
                  SizedBox(
                    width: responsive.wp(2),
                  ),
                  AutoSizeText(
                    'Genshin Impact',
                    maxLines: 1,
                    style: GoogleFonts.poppins(
                      fontSize: responsive.dp(1.9),
                      fontWeight: FontWeight.w600,
                      color: Colores.naranja,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: responsive.hp(2),
              ),
              AutoSizeText(
                'Description',
                style: GoogleFonts.poppins(
                  fontSize: responsive.dp(2.1),
                  fontWeight: FontWeight.w600,
                  color: Colores.azul,
                ),
              ),
              SizedBox(
                height: responsive.hp(2),
              ),
              ReadMoreText(
                'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                trimLines: 2,
                colorClickableText: Colores.naranja,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Show less',
                style: GoogleFonts.poppins(
                  fontSize: responsive.dp(1.6),
                  fontWeight: FontWeight.w400,
                  color: Colores.gris,
                ),
              ),
              SizedBox(
                height: responsive.hp(2),
              ),
              AutoSizeText(
                'Last events',
                style: GoogleFonts.poppins(
                  fontSize: responsive.dp(2.1),
                  fontWeight: FontWeight.w600,
                  color: Colores.azul,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
