import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guild_events/helpers/responsive_helper.dart';
import 'package:guild_events/ui/colors/colors.dart';

class TopDataMainHome extends StatefulWidget {
  TopDataMainHome({Key? key}) : super(key: key);

  @override
  State<TopDataMainHome> createState() => _TopDataMainHomeState();
}

class _TopDataMainHomeState extends State<TopDataMainHome> {
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return SizedBox(
      width: responsive.wp(86),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: responsive.wp(45),
            child: AutoSizeText(
              minFontSize: 12,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              'Hi Armony',
              style: GoogleFonts.poppins(
                fontSize: responsive.dp(2.5),
                fontWeight: FontWeight.w500,
                color: Colores.amarillo,
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: Colores.amarillo,
            radius: responsive.dp(2),
            backgroundImage: NetworkImage(
                'https://pbs.twimg.com/media/EbEoO1GXYAEoNit.jpg:large'),
          ),
        ],
      ),
    );
  }
}
