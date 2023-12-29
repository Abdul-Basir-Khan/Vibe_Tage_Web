import 'package:flutter/material.dart';
import 'package:vibe_tag_web/screen/Videos/video_with_tab.dart';

import '../../constant/reusabletext.dart';
import '../Model/icon_and_text_model.dart';

class HomeVideoScreen extends StatefulWidget {
  const HomeVideoScreen({super.key});

  @override
  State<HomeVideoScreen> createState() => _HomeVideoScreenState();
}

class _HomeVideoScreenState extends State<HomeVideoScreen> {
  final List<IconTextModel> tabData = [
    IconTextModel(
        iconRequired: 'Assets/icons/videos/Iconly Bold Play.png',
        textRequired: 'Home'),
    IconTextModel(
        iconRequired: 'Assets/icons/videos/Group 1000004046.png',
        textRequired: 'Live Videos'),
    IconTextModel(
        iconRequired: 'Assets/icons/videos/Group 1000004044.png',
        textRequired: 'Buzzins'),
    IconTextModel(
        iconRequired: 'Assets/icons/videos/Group (1).png',
        textRequired: 'Movies & Shows'),
    IconTextModel(
        iconRequired: 'Assets/icons/videos/Iconly Bold Game.png',
        textRequired: 'Gaming'),
    IconTextModel(
        iconRequired: 'Assets/icons/videos/Subtract.png',
        textRequired: 'Playlist'),
    IconTextModel(
        iconRequired: 'Assets/icons/videos/Iconly Bold Bookmark.png',
        textRequired: 'Saving'),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.20,
                 height: MediaQuery.sizeOf(context).height,
                  padding: const EdgeInsets.only(right: 20),
                  decoration: const BoxDecoration(border: Border(right: BorderSide(color:Color(0xf25000000),))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      tabData.length,
                      (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentIndex = index;
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
                  ),
                ),

                const SizedBox(
                  width: 10,
                ),
                _currentIndex == 0
                    ? const Expanded(child: VideoWithTab())
                    : const SizedBox()
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
