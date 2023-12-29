import 'package:flutter/material.dart';
import 'package:vibe_tag_web/screen/Playlist/playlist_with_tab.dart';
import 'package:vibe_tag_web/screen/Playlist/saved_main_tab/saved_with_tabs.dart';
import 'package:vibe_tag_web/screen/Videos/video_with_tab.dart';

import '../../constant/reusabletext.dart';
import '../Model/icon_and_text_model.dart';

class PlaylistScreen extends StatefulWidget {
  const PlaylistScreen({super.key});

  @override
  State<PlaylistScreen> createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  final List<IconTextModel> tabData = [
    IconTextModel(
        iconRequired: 'Assets/icons/playlist/Home-3.png',
        textRequired: 'Home'),
    IconTextModel(
        iconRequired: 'Assets/icons/playlist/Ticket Star.png',
        textRequired: 'Events'),
    IconTextModel(
        iconRequired: 'Assets/icons/playlist/Group 1000004039.png',
        textRequired: 'Pages'),
    IconTextModel(
        iconRequired: 'Assets/icons/playlist/3 User.png',
        textRequired: 'Groups'),
    IconTextModel(
        iconRequired: 'Assets/icons/playlist/Group (1).png',
        textRequired: 'Gifts'),
    IconTextModel(
        iconRequired: 'Assets/icons/playlist/Iconly Bold Document.png',
        textRequired: 'Blogs & Articles'),
    IconTextModel(
        iconRequired: 'Assets/icons/playlist/Iconly Bold Chat.png',
        textRequired: 'Forums'),
    IconTextModel(
        iconRequired: 'Assets/icons/playlist/Iconly Bold Work.png',
        textRequired: 'Jobs'),
    IconTextModel(
        iconRequired: 'Assets/icons/playlist/Group 1000004091.png',
        textRequired: 'Nudge'),
    IconTextModel(
        iconRequired: 'Assets/icons/playlist/Iconly Bold 2 User.png',
        textRequired: 'Find Friends'),
    IconTextModel(
        iconRequired: 'Assets/icons/playlist/Subtract.png',
        textRequired: 'Find Vibes'),
    IconTextModel(
        iconRequired: 'Assets/icons/playlist/Iconly Bold Search.png',
        textRequired: 'Explore'),
    IconTextModel(
        iconRequired: 'Assets/icons/playlist/Layer 2.png',
        textRequired: 'Popular Posts'),
  ];
  final List<IconTextModel> tabData1 = [
    IconTextModel(
        iconRequired: 'Assets/icons/videos/Iconly Bold Play.png',
        textRequired: 'Video'),
    IconTextModel(
        iconRequired: 'Assets/icons/videos/Group 1000004044.png',
        textRequired: 'Buzzins'),
    IconTextModel(
        iconRequired: 'Assets/icons/videos/Group (1).png',
        textRequired: 'Movies & Shows'),
    IconTextModel(
        iconRequired: 'Assets/icons/videos/Group 1000004046.png',
        textRequired: 'Live Videos'),
    IconTextModel(
        iconRequired: 'Assets/icons/videos/Iconly Bold Game.png',
        textRequired: 'Gaming'),
  ];
  final List<IconTextModel> tabData2 = [
    IconTextModel(
        iconRequired: 'Assets/icons/playlist/Layer 2 (1).png',
        textRequired: 'Marketplace'),

    IconTextModel(
        iconRequired: 'Assets/icons/playlist/Iconly Bold Buy.png',
        textRequired: 'Charts'),
    IconTextModel(
        iconRequired: 'Assets/icons/playlist/Group (2).png',
        textRequired: 'Funding'),
  ];
  final List<IconTextModel> tabData3= [
    IconTextModel(
        iconRequired: 'Assets/icons/playlist/Subtract (1).png',
        textRequired: 'Playlist'),
    IconTextModel(
        iconRequired: 'Assets/icons/playlist/Time Circle.png',
        textRequired: 'Memories'),
    IconTextModel(
        iconRequired: 'Assets/icons/playlist/Iconly Bold Bookmark.png',
        textRequired: 'Saved'),
    IconTextModel(
        iconRequired: 'Assets/icons/playlist/Iconly Bold Image.png',
        textRequired: 'Albums'),
    IconTextModel(
        iconRequired: 'Assets/icons/playlist/Iconly Bold Chart.png',
        textRequired: 'My Activity'),
  ];
  int  ?_currentIndex;
  int ?_currentIndex1;
  int ?_currentIndex2;
  int ?_currentIndex3;

  @override
  void initState() {
    _currentIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.20,
                 height: MediaQuery.sizeOf(context).height*1,
                  padding: const EdgeInsets.only(right: 20),
                  decoration: const BoxDecoration(border: Border(right: BorderSide(color:Color(0xf25000000),))),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        SizedBox(height: 20,),
                        const ReusableText(
                          title: 'Socials',
                          size: 14,
                          weight: FontWeight.w600,
                          color: Color(0xff7D8CAC),
                        ),
                        SizedBox(height: 10,),
                        ...List.generate(
                          tabData.length,
                              (index) => GestureDetector(
                            onTap: () {
                              setState(() {
                                _currentIndex = index;
                                _currentIndex1 = null;
                                _currentIndex2= null;
                                _currentIndex3 = null;
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              padding:
                              const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: _currentIndex == index
                                    ? const Color(0xffF1F4FB)
                                    : Colors.transparent,
                              ),
                              child: Row(
                                children: [
                                  Image(
                                      color: _currentIndex == index
                                          ? const Color(0xff485470)
                                          : const Color(0xffC8D1E5),
                                      image: AssetImage(
                                          tabData[index].iconRequired.toString())),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  ReusableText(
                                    title: tabData[index].textRequired.toString(),
                                    size: 15,
                                    weight: FontWeight.w600,
                                    color: _currentIndex == index
                                        ? const Color(0xff212121)
                                        : const Color(0xff485470),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Divider(thickness: 2,color: Color(0xffF1F4FB),height: 2,),
                        SizedBox(height: 10,),
                        const ReusableText(
                          title: 'Entertainment',
                          size: 14,
                          weight: FontWeight.w600,
                          color: Color(0xff7D8CAC),
                        ),
                        SizedBox(height: 10,),
                        ...List.generate(
                          tabData1.length,
                              (index) => GestureDetector(
                            onTap: () {
                              setState(() {
                                _currentIndex1 = index;
                                _currentIndex = null;
                                _currentIndex2= null;
                                _currentIndex3 = null;
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              padding:
                              const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: _currentIndex1 == index
                                    ? const Color(0xffF1F4FB)
                                    : Colors.transparent,
                              ),
                              child: Row(
                                children: [
                                  Image(
                                      color: _currentIndex1 == index
                                          ? const Color(0xff485470)
                                          : const Color(0xffC8D1E5),
                                      image: AssetImage(
                                          tabData1[index].iconRequired.toString())),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  ReusableText(
                                    title: tabData1[index].textRequired.toString(),
                                    size: 15,
                                    weight: FontWeight.w600,
                                    color: _currentIndex1 == index
                                        ? const Color(0xff212121)
                                        : const Color(0xff485470),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Divider(thickness: 2,color: Color(0xffF1F4FB),height: 2,),
                        SizedBox(height: 10,),
                        const ReusableText(
                          title: 'Shopping',
                          size: 14,
                          weight: FontWeight.w600,
                          color: Color(0xff7D8CAC),
                        ),
                        SizedBox(height: 10,),
                        ...List.generate(
                          tabData2.length,
                              (index) => GestureDetector(
                            onTap: () {
                              setState(() {
                                _currentIndex2 = index;
                                _currentIndex =null;
                                _currentIndex1 = null;
                                _currentIndex3 = null;
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              padding:
                              const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: _currentIndex2 == index
                                    ? const Color(0xffF1F4FB)
                                    : Colors.transparent,
                              ),
                              child: Row(
                                children: [
                                  Image(
                                      color: _currentIndex2 == index
                                          ? const Color(0xff485470)
                                          : const Color(0xffC8D1E5),
                                      image: AssetImage(
                                          tabData2[index].iconRequired.toString())),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  ReusableText(
                                    title: tabData2[index].textRequired.toString(),
                                    size: 15,
                                    weight: FontWeight.w600,
                                    color: _currentIndex2 == index
                                        ? const Color(0xff212121)
                                        : const Color(0xff485470),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Divider(thickness: 2,color: Color(0xffF1F4FB),height: 2,),
                        SizedBox(height: 10,),
                        const ReusableText(
                          title: 'Personal',
                          size: 14,
                          weight: FontWeight.w600,
                          color: Color(0xff7D8CAC),
                        ),
                        SizedBox(height: 10,),
                        ...List.generate(
                          tabData3.length,
                              (index) => GestureDetector(
                            onTap: () {
                              setState(() {
                                _currentIndex3 = index;
                                _currentIndex = null;
                                _currentIndex1 = null;
                                _currentIndex2= null;
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              padding:
                              const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: _currentIndex3 == index
                                    ? const Color(0xffF1F4FB)
                                    : Colors.transparent,
                              ),
                              child: Row(
                                children: [
                                  Image(
                                      color: _currentIndex3 == index
                                          ? const Color(0xff485470)
                                          : const Color(0xffC8D1E5),
                                      image: AssetImage(
                                          tabData3[index].iconRequired.toString())),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  ReusableText(
                                    title: tabData3[index].textRequired.toString(),
                                    size: 15,
                                    weight: FontWeight.w600,
                                    color: _currentIndex3 == index
                                        ? const Color(0xff212121)
                                        : const Color(0xff485470),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Divider(thickness: 2,color: Color(0xffF1F4FB),height: 2,),
                        SizedBox(height: 10,),


                      ]
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                _currentIndex3 == 0
                    ? const Expanded(child: PlaylistWithTab()):_currentIndex3 == 2?Expanded(child: SavedWithTab())
                    : const SizedBox()
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
