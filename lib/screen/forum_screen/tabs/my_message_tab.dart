import 'package:flutter/material.dart';

import '../../../constant/reusabletext.dart';



class MyMessageTab extends StatefulWidget {
  const MyMessageTab({Key? key}) : super(key: key);

  @override
  State<MyMessageTab> createState() => _MyMessageTabState();
}

class _MyMessageTabState extends State<MyMessageTab> {
  @override
  Widget build(BuildContext context) {
    return
      Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [

          Image(image: AssetImage("Assets/images/form/image 101.png")),
          ReusableText(title: 'No threads to show!',size: 18,weight: FontWeight.w700,color: Color(0xff485470),alignment: TextAlign.center,),



        ],
      ),
    );
  }
}
