import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guild_events/helpers/responsive_helper.dart';
import 'package:guild_events/ui/colors/colors.dart';
import 'package:guild_events/ui/pages/login/login_page.dart';
import 'package:guild_events/ui/widgets/input_general.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                    'Create an account',
                    style: GoogleFonts.poppins(
                      color: Colores.azul,
                      fontSize: responsive.dp(3.4),
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 1,
                  ),
                  SizedBox(height: responsive.dp(3)),
                  SizedBox(
                    width: responsive.wp(80),
                    child: InputGeneral(
                      label: 'Email Address',
                      keyboardType: TextInputType.emailAddress,
                    ),
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
                      onPressed: () {},
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
                        'Sign Up',
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
                      'By signing up, you agree to our Terms of Service and Privacy Policy.',
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
              left: responsive.dp(7.5),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                child: AutoSizeText(
                  'Already have an account?',
                  style: GoogleFonts.poppins(
                    color: Colores.gris,
                    fontSize: responsive.dp(2),
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
