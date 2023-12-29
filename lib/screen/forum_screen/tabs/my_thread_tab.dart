import 'package:flutter/material.dart';

import '../../../constant/reusabletext.dart';



class MyThreadTab extends StatefulWidget {
  const MyThreadTab({Key? key}) : super(key: key);

  @override
  State<MyThreadTab> createState() => _MyThreadTabState();
}

class _MyThreadTabState extends State<MyThreadTab> {
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
