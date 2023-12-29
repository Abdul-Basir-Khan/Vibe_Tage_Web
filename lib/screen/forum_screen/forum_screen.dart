import 'package:flutter/material.dart';
import 'package:vibe_tag_web/screen/forum_screen/tabs/browse_forum_tab.dart';
import 'package:vibe_tag_web/screen/forum_screen/tabs/my_message_tab.dart';
import 'package:vibe_tag_web/screen/forum_screen/tabs/my_thread_tab.dart';
import 'package:vibe_tag_web/screen/forum_screen/tabs/search_tab.dart';

import '../../constant/reusabletext.dart';


class ForumScreen extends StatefulWidget {
  const ForumScreen({super.key});

  @override
  State<ForumScreen> createState() => _ForumScreenState();
}

class _ForumScreenState extends State<ForumScreen> {


  final List<String> tabText = [
    'Browse Forum',
    'Search',
    'My Threads',
    'My Messages',
  ];
  final List pages = [
   Expanded(child: BrowseForumTab()),
  Expanded(child: SearchTab()),
    Expanded(child: const MyThreadTab()),
    Expanded(child: const MyMessageTab()),
  ];

  int _currentIndex = 0;



  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: const Color(0xffF1F4FB),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 15),
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            const ReusableText(
              title:
              'Forum',
              size: 28,
              weight: FontWeight.w700,
              color: Color(0xff485470),
            ),
            Container(
              height: MediaQuery.sizeOf(context).height*0.90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
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
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Column(
                    children: [
                      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                        ...List.generate(
                            tabText.length,
                                (index) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  _currentIndex = index;
                                });
                              },
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.08,
                                child: Center(
                                  child: Text(
                                    tabText[index].toString(),
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: _currentIndex == index
                                            ? const Color(0xffFF9200)
                                            : const Color(0xff485470),
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            )),
                      ]),
                      const SizedBox(height: 10),
                      Container(
                        height: 2,
                        color: const Color(0xffC8D1E5),
                        child: Row(
                          children: List.generate(
                              tabText.length,
                                  (index) => Container(
                                width: MediaQuery.sizeOf(context).width * 0.08,
                                color: _currentIndex == index
                                    ? const Color(0xffFF9200)
                                    : const Color(0xffC8D1E5),
                              )),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  pages[_currentIndex],

                ],
              ),
            )


          ],
        ),
      ),
    ));
  }
}
