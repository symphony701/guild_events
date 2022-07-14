import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guild_events/helpers/responsive_helper.dart';
import 'package:guild_events/ui/colors/colors.dart';
import 'package:guild_events/ui/pages/home/home_page.dart';
import 'package:guild_events/ui/pages/signup/signup_page.dart';
import 'package:guild_events/ui/widgets/input_general.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: responsive.height,
          width: double.infinity,
          child: Stack(fit: StackFit.expand, children: [
            Positioned(
              top: responsive.dp(8),
              left: responsive.dp(4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AutoSizeText(
                    'Hey, Login Now',
                    style: GoogleFonts.poppins(
                      color: Colores.azul,
                      fontSize: responsive.dp(3.4),
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 1,
                  ),
                  SizedBox(height: responsive.dp(2)),
                  SizedBox(
                    width: responsive.wp(80),
                    child: InputGeneral(
                      label: 'Username',
                    ),
                  ),
                  SizedBox(height: responsive.dp(2)),
                  SizedBox(
                    width: responsive.wp(80),
                    child: InputGeneral(label: 'Password', obscureText: true),
                  ),
                  SizedBox(height: responsive.dp(4)),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: Colores.amarillo,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              responsive.dp(1),
                            ),
                          ),
                          fixedSize: Size(responsive.wp(80), responsive.hp(7))),
                      child: AutoSizeText(
                        'Login',
                        style: GoogleFonts.poppins(
                            color: Colores.azul,
                            fontSize: responsive.dp(2.5),
                            fontWeight: FontWeight.w500),
                        maxLines: 1,
                      )),
                  SizedBox(height: responsive.dp(3)),
                  SizedBox(
                    width: responsive.wp(80),
                    height: responsive.hp(5),
                    child: AutoSizeText(
                      'You forgot your password? Come on, click here!',
                      style: GoogleFonts.poppins(
                        color: Colores.gris,
                        fontSize: responsive.dp(1.5),
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 4,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: responsive.dp(5),
              left: responsive.dp(5.2),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SignUpPage(),
                    ),
                  );
                },
                child: AutoSizeText(
                  'Don\'t have an account? Sign up now!',
                  style: GoogleFonts.poppins(
                    color: Colores.gris,
                    fontSize: responsive.dp(1.8),
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 1,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
