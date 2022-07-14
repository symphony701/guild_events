import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guild_events/helpers/responsive_helper.dart';
import 'package:guild_events/ui/colors/colors.dart';

class CircleStack extends StatelessWidget {
  const CircleStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return SizedBox(
      width: responsive.dp(10),
      height: responsive.dp(10),
      child: Stack(children: [
        Positioned(
          left: responsive.dp(0),
          top: responsive.dp(0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              'https://1.bp.blogspot.com/-JBDwjy8CQjg/YVn_vzKu-cI/AAAAAAAAuqs/isnQnoz2S-oKe8a6sbFKHV8kFdAOpcMygCLcBGAsYHQ/s900/cute%2Banime%2Bgirl%2Bwallpapers%2B%25281%2529.png',
              width: responsive.dp(3.5),
              height: responsive.dp(3.5),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          left: responsive.dp(1.5),
          top: responsive.dp(0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              'https://animegirls.org/wp-content/uploads/2022/03/sad-anime-girl-6-1.jpg',
              width: responsive.dp(3.5),
              height: responsive.dp(3.5),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          left: responsive.dp(3),
          top: responsive.dp(0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              'https://aniyuki.com/wp-content/uploads/2022/06/aniyuki-manga-profile-pictures-49.jpg',
              width: responsive.dp(3.5),
              height: responsive.dp(3.5),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
            left: responsive.dp(4.5),
            top: responsive.dp(0),
            child: CircleAvatar(
              backgroundColor: Colores.amarillo,
              radius: responsive.dp(2.1),
              child: Text('+3',
                  style: GoogleFonts.poppins(
                    fontSize: responsive.dp(1.8),
                    fontWeight: FontWeight.w600,
                    color: Colores.azul,
                  )),
            )),
      ]),
    );
  }
}
