import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guild_events/helpers/responsive_helper.dart';
import 'package:guild_events/ui/colors/colors.dart';

class SearchMainHome extends StatefulWidget {
  SearchMainHome({Key? key}) : super(key: key);

  @override
  State<SearchMainHome> createState() => _SearchMainHomeState();
}

class _SearchMainHomeState extends State<SearchMainHome> {
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Container(
      width: responsive.wp(86),
      height: responsive.dp(5.5),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colores.amarillo,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(responsive.dp(1)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: responsive.wp(3),
        ),
        child: Row(
          children: [
            Icon(
              Icons.search,
              color: Colores.amarillo,
              size: responsive.dp(3),
            ),
            SizedBox(
              width: responsive.wp(3),
            ),
            Expanded(
              child: TextFormField(
                cursorColor: Colores.amarillo,
                style: GoogleFonts.poppins(
                  fontSize: responsive.dp(2),
                  fontWeight: FontWeight.w500,
                  color: Colores.amarillo,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search',
                  hintStyle: GoogleFonts.poppins(
                    fontSize: responsive.dp(1.8),
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(132, 255, 223, 105),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
