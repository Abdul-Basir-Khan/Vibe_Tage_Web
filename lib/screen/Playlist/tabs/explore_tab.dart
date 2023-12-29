import 'package:flutter/material.dart';
import '../../../constant/reusabletext.dart';
import 'package:flutter/services.dart';

import '../dialog/dialog.dart';

class ExploreTab extends StatefulWidget {

  @override
  State<ExploreTab> createState() => _ExploreTabState();
}

class _ExploreTabState extends State<ExploreTab> {
  final List<String> list1=[
    'Assets/images/playlist/Rectangle 24212.png',
    'Assets/images/playlist/Rectangle 24212 (1).png',
    'Assets/images/playlist/Rectangle 24212 (2).png',
    'Assets/images/playlist/Rectangle 24212 (3).png',
    'Assets/images/playlist/Rectangle 24212 (4).png',
    'Assets/images/playlist/Rectangle 24212 (5).png',
    'Assets/images/playlist/Rectangle 24212 (6).png',
    'Assets/images/playlist/Rectangle 24212 (7).png',
  ];

  final List<String> list2=[
    'Assets/images/kids/Group 76754.png',
    'Assets/images/kids/Group 76844.png',
    'Assets/images/kids/Group 76844 (1).png',
    'Assets/images/kids/Group 76844 (2).png',
    'Assets/images/kids/Group 76844 (3).png',
    'Assets/images/kids/Group 76844 (4).png',
    'Assets/images/kids/Group 76844 (5).png',
    'Assets/images/kids/Group 76844 (6).png',
  ];

  final List imges=[
    'Assets/images/video/Rectangle 24256.png',
    'Assets/images/video/Rectangle 24256 (1).png',
    'Assets/images/video/Rectangle 24256 (2).png',
    'Assets/images/video/Rectangle 24256 (3).png',
    'Assets/images/video/Rectangle 24256 (4).png',
    'Assets/images/video/Rectangle 24256 (5).png',
    'Assets/images/video/Rectangle 24256 (6).png',
    'Assets/images/video/Rectangle 24256 (7).png',

  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height*0.80,
      child: ListView(
        physics: ScrollPhysics(),
        children: [
          const SizedBox(height: 20),
          GridView.builder(
            shrinkWrap: true,
            itemCount: list1.length,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio:20/18,
              crossAxisCount: 4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (BuildContext context, int index) {
              return  GestureDetector(
                onTap: (){
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return PlaylistDialog();
                    },
                  );
                },
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    boxShadow: [
                      const BoxShadow(
                        offset: Offset(0,4),
                        color: Color(0xf107D8CAC),
                        spreadRadius: 0.10,blurRadius: 0.10
                      ),
                      const BoxShadow(
                          offset: Offset(4,0),
                          color: Color(0xf107D8CAC),
                          spreadRadius: 0.10,blurRadius: 0.10
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(
                        width: double.infinity,
                        fit: BoxFit.cover,
                        height: 150,
                        image: AssetImage(list1[index]),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const ReusableText(
                              title:
                              'History',
                              size: 18,
                              weight: FontWeight.w700,
                              color: Color(0xff212121),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.lock_rounded,
                                  color: Color(0xffC8D1E5),
                                ),
                                const SizedBox(width: 6,),
                                const ReusableText(
                                  title: 'Private',
                                  size: 13,
                                  weight: FontWeight.w600,
                                  color: Color(0xff485470),
                                ),
                                const SizedBox(width: 10,),
                              Container(
                                height: 5,width: 5,
                                decoration: const BoxDecoration(shape: BoxShape.circle,color: Color(0xff99A7C7)),),
                                const SizedBox(width: 6,),
                                const ReusableText(
                                  title: '34 Videos',
                                  size: 13,
                                  weight: FontWeight.w600,
                                  color: Color(0xff485470),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}