import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guild_events/ui/colors/colors.dart';

class InputGeneral extends StatefulWidget {
  final String label;
  final TextInputType keyboardType;
  final bool obscureText;
  final void Function(String text)? onChanged;
  InputGeneral(
      {Key? key,
      this.label = '',
      this.keyboardType = TextInputType.text,
      this.obscureText = false,
      this.onChanged})
      : super(key: key);

  @override
  State<InputGeneral> createState() => _InputGeneralState();
}

class _InputGeneralState extends State<InputGeneral> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyboardType,
      obscureText: widget.obscureText,
      onChanged: widget.onChanged,
      style: GoogleFonts.poppins(
        color: Colores.azul,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      cursorColor: Colores.azul,
      decoration: InputDecoration(
        labelStyle: const TextStyle(
          color: Colores.azul,
        ),
        labelText: widget.label,
        filled: true,
        fillColor: Colors.white,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colores.naranja,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colores.naranja,
          ),
        ),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colores.naranja,
          ),
        ),
      ),
    );
  }
}
