import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_kit/constants.dart';
import 'package:shop_kit/layout/layout_screen.dart';
import 'package:shop_kit/screens/home/components/search_form.dart';

class CustomTextField extends StatelessWidget {
  final textEditor;
  final icon;
  final text;
  final obscureText;
  const CustomTextField(
      {super.key, this.textEditor, this.icon, this.text, this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(66, 150, 150, 150), // Shadow color
            blurRadius: 10, // Shadow blur radius
            offset: Offset(0, 4), // Shadow offset
          ),
        ],
      ),
      child: TextFormField(
        controller: textEditor,
        onSaved: (value) {},
        obscureText: obscureText,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: text,
          border: outlineInputBorder,
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          errorBorder: outlineInputBorder,
          prefixIcon: Container(
            margin: const EdgeInsets.only(right: 12),
            decoration: const BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            width: 60,
            height: 60,
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          contentPadding: const EdgeInsets.only(left: 16),
        ),
        cursorColor: primaryColor,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
      ),
    );
  }
}
