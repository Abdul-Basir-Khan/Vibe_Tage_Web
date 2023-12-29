import 'package:flutter/material.dart';
import 'package:vibe_tag_web/screen/Playlist/tabs/explore_tab.dart';

import '../../constant/reusabletext.dart';

class PlaylistWithTab extends StatefulWidget {
  const PlaylistWithTab({super.key});

  @override
  State<PlaylistWithTab> createState() => _PlaylistWithTabState();
}

class _PlaylistWithTabState extends State<PlaylistWithTab> {
  final List<String> tabText = [
    'Explore',
    'My Playlist',
    'Saved Playlist',
  ];
  final List pages = [
    ExploreTab(),
    const SizedBox(),
    const SizedBox(),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.98,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.arrow_back_outlined, color: Color(0xff7D8CAC)),
              const SizedBox(
                width: 10,
              ),
              const ReusableText(
                title: 'Playlist',
                size: 28,
                weight: FontWeight.w700,
                color: Color(0xff485470),
              ),
              const Spacer(),
              SizedBox(
                height: 45,
                width: MediaQuery.sizeOf(context).width * 0.40,
                child: TextField(
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff99A7C7)),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0xff99A7C7),
                    ),
                    filled: true,
                    fillColor: const Color(0xffFFFFFF),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Search Playlist",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Color(0xffC8D1E5),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Color(0xffC8D1E5),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26),
                  border: Border.all(color: const Color(0xffC8D1E5)),
                  color: Colors.white,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ReusableText(
                      title: 'Category',
                      size: 16,
                      weight: FontWeight.w700,
                      color: Color(0xff99A7C7),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0xff99A7C7),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26),
                  color: const Color(0xffFF9200),
                ),
                child: const Center(
                  child: ReusableText(
                    title: 'Create Playlist',
                    size: 16,
                    weight: FontWeight.w700,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
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
                                        ? const Color(0xff212121)
                                        : const Color(0xff7D8CAC),
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
                                : const Color(0x00000000),
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
    );
  }
}
