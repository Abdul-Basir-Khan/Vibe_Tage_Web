import 'package:flutter/material.dart';

import '../../constant/reusabletext.dart';
import 'home_page.dart';
import 'my_support.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({Key? key}) : super(key: key);

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {

  int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_outlined,
          color: Color(0xff000000),
        ),
        title: const ReusableText(
          title: 'Help Center',
          size: 17,
          weight: FontWeight.w500,
          color: Color(0xff000000),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Color(0xffFF9200)),
            child:Center(
              child:     ReusableText(
                title: 'Contact Support',
                size: 16,
                weight: FontWeight.w700,
                color:Color(0xffFFFFFf),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70),
        child: ListView(
          children: [
            Divider(
              thickness: 3,
              height: 3,
              color: Color(0xf257D8CAC),
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      _currentIndex=0;
                    });
                  },

                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableText(
                        title: 'Homepage',
                        size: 16,
                        weight: FontWeight.w600,
                        color: _currentIndex==0?Color(0xff212121):Color(0xff7D8CAC),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        width: MediaQuery.sizeOf(context).width*0.10,
                        height: 4,
                        color: _currentIndex==0? Color(0xffFF9200):Color(0xff7D8CAC),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {

                      _currentIndex=1;
                    });
                  },

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableText(
                        title: 'My Support Requests',
                        size: 16,
                        weight: FontWeight.w600,
                        color: _currentIndex==1?Color(0xff212121):Color(0xff7D8CAC),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 4,
                        width: MediaQuery.sizeOf(context).width*0.75,
                        color: _currentIndex==1? Color(0xffFF9200):Color(0xff7D8CAC),
                      ),
                    ],
                  ),
                ),

              ],
            ),
            SizedBox(height: 20,),
            _currentIndex==0?MyHomePageTab():SizedBox(

            )
          ],
        ),
      ),
    );
  }
}
