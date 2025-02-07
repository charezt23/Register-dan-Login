import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDropdownMenu extends StatelessWidget {
  final List<String> field;
  final ValueChanged<String?> onSelected;
  final String hint;

  final TextEditingController controllerUse;

  MyDropdownMenu({
    required this.field,
    required this.onSelected,
    required this.hint,
    required this.controllerUse,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: DropdownMenu<String>(
        controller: controllerUse,
        width: 344,
        hintText: hint,
        textStyle: GoogleFonts.getFont(
          'Nunito',
          fontWeight: FontWeight.w700,
          fontSize: 24,
          color: Color(0xFFFFFFFF),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(left: 12),
        ),
        requestFocusOnTap: false,
        onSelected: onSelected,
        dropdownMenuEntries:
            field.map<DropdownMenuEntry<String>>((String item) {
          return DropdownMenuEntry<String>(
            value: item,
            label: item,
          );
        }).toList(),
      ),
    );
  }
}
