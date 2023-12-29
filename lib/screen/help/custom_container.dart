import 'package:flutter/material.dart';

import '../../constant/reusabletext.dart';


class CustomContainer extends StatelessWidget {
  final String text1;
  final String text2;
  final String imagePath;
  final Color borderColor;
  final Color textColor;
  const CustomContainer({Key? key, required this.text1, required this.text2, required this.imagePath, required this.borderColor, required this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width*0.10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        color: Colors.white,
        border:Border.all(color: borderColor),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 30,),
          Image(
              height: 62,width: 62,
              image: AssetImage(imagePath)),
          SizedBox(height: 20,),
          ReusableText(
            title: text1,
            size: 18,
            weight: FontWeight.w700,
            color: textColor,
          ),
          SizedBox(height: 15,),
          ReusableText(
            alignment: TextAlign.center,
            title: text2,
            size: 14,
            weight: FontWeight.w400,
            color: Color(0xff7D8CAC),
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}
