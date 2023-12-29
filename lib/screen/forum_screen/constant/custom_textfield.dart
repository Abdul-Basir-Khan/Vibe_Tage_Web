

import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {

  final String ? hintText;
  final Icon ? sufixIcon;
  final Color ? hintTextColor;
  final int ? length;
  final Widget ? wiget;



  const CustomTextField({Key? key, this.hintText, this.sufixIcon, this.hintTextColor, this.length, this.wiget, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      TextField(
        maxLines: length ,
      obscuringCharacter: '*',

      decoration: InputDecoration(

        suffix: wiget,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
                color: Color(0xffC8D1E5))),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
                color: Color(0xffC8D1E5))),
        hintStyle:  TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: hintTextColor),
      suffixIcon: sufixIcon,
        filled: true,
        fillColor: const Color(0xffFFFFFF),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide:
          const BorderSide(color: Color(0xffC8D1E5)),
        ),
        hintText: hintText,
      ),
    );
  }
}


