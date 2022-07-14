import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guild_events/helpers/responsive_helper.dart';
import 'package:guild_events/ui/colors/colors.dart';
import 'package:guild_events/ui/pages/login/login_page.dart';
import 'package:guild_events/ui/pages/signup/signup_page.dart';

class InfoView extends StatefulWidget {
  InfoView({Key? key}) : super(key: key);

  @override
  State<InfoView> createState() => _InfoViewState();
}

class _InfoViewState extends State<InfoView> {
  @override
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
              left: -150,
              child: Container(
                width: responsive.dp(35),
                height: responsive.dp(35),
                decoration: BoxDecoration(
                  color: Colores.naranja,
                  borderRadius: BorderRadius.circular(responsive.dp(50)),
                ),
              )),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: responsive.dp(2)),
              child: Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(height: responsive.hp(20)),
                      AutoSizeText(
                        'Organize your events, join others, coordinate meetings of your guild',
                        maxLines: 5,
                        style: GoogleFonts.poppins(
                          fontSize: responsive.dp(5),
                          fontWeight: FontWeight.bold,
                          color: Colores.azul,
                        ),
                      ),
                      SizedBox(height: responsive.dp(2)),
                      AutoSizeText(
                        'Everything you need in one place. Sign up and your guild and start the profit ',
                        maxLines: 4,
                        style: GoogleFonts.poppins(
                          fontSize: responsive.dp(2),
                          fontWeight: FontWeight.w600,
                          color: Colores.naranja,
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: responsive.hp(5),
                    left: responsive.wp(5.6),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                    builder: (context) => SignUpPage(),
                                  ),
                                  (route) => false);
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(responsive.dp(2)),
                              ),
                              primary: Colores.azul,
                              fixedSize: Size(
                                responsive.wp(80),
                                responsive.hp(7),
                              ),
                            ),
                            child: AutoSizeText(
                              'Sign up',
                              style: GoogleFonts.poppins(
                                  fontSize: responsive.dp(2.5),
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ),
                          SizedBox(height: responsive.dp(1.5)),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ),
                              );
                            },
                            child: AutoSizeText('I already have an account',
                                style: GoogleFonts.poppins(
                                    fontSize: responsive.dp(2.5),
                                    fontWeight: FontWeight.w500,
                                    color: Colores.azul)),
                          ),
                        ],
                      ),
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
