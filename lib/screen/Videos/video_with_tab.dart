import 'package:flutter/material.dart';
import 'package:vibe_tag_web/screen/Videos/tabs/podcast_tab.dart';

import '../../constant/reusabletext.dart';

class VideoWithTab extends StatefulWidget {
  const VideoWithTab({super.key});

  @override
  State<VideoWithTab> createState() => _VideoWithTabState();
}

class _VideoWithTabState extends State<VideoWithTab> {

  final List<String> tabText = [
    'All',
    'Podcasts',
    'Gaming',
    'Music',
    'News',
    'Live',
    'Technology',
    'Comedy',
    'Watched',
    'New to You',

  ];
  final List pages = [
    const SizedBox(),
    PodcastsTab(),
    const SizedBox(),
    const SizedBox(),
    const SizedBox(),
    const SizedBox(),
    const SizedBox(),
    const SizedBox(),
    const SizedBox(),
    const SizedBox(),

  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.arrow_back_outlined, color: Color(0xff7D8CAC)),
            const SizedBox(width: 10,),
            const ReusableText(
              title: 'Videos',
              size: 28,
              weight: FontWeight.w700,
              color: Color(0xff485470),
            ),
            const Spacer(),
            SizedBox(
              height: 45,
              width: MediaQuery.sizeOf(context).width*0.40,
              child:

              TextField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintStyle: const TextStyle(
                      fontSize: 14,fontWeight: FontWeight.w500,
                      color: Color(0xff99A7C7)),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Color(0xff99A7C7),
                  ),
                  filled: true,
                  fillColor: const Color(0xffFFFFFF),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide:BorderSide.none,
                  ),
                  hintText: "Search Video",
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
                border: Border.all(color: const Color(0xff485470)),
                color: Colors.white,
              ),
              child: const Center(
                child: ReusableText(
                  title: 'Switch to Kids',
                  size: 16,
                  weight: FontWeight.w700,
                  color: Color(0xff485470),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26),
                color: const Color(0xffFF9200),
              ),
              child: const Center(
                child: ReusableText(
                  title: 'Create',
                  size: 16,
                  weight: FontWeight.w700,
                  color: Color(0xffFFFFFF),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:

           [
             ...List.generate(
                 tabText.length,
                     (index) => GestureDetector(
                   onTap: () {
                     setState(() {
                       _currentIndex = index;
                     });
                   },
                   child: Container(
                     width: MediaQuery.sizeOf(context).width*0.08,
                     child: Row(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Column(
                           children: [
                             Text(
                               tabText[index].toString(),
                               style: TextStyle(
                                   fontSize: 14,
                                   color: _currentIndex == index
                                       ? const Color(0xff212121)
                                       : const Color(0xff7D8CAC),
                                   fontWeight: FontWeight.w600),
                             ),
                             const SizedBox(height: 10,),
                             Container(
                               height: 2,
                               width: MediaQuery.sizeOf(context).width*0.08,
                               color:  _currentIndex == index
                                   ? const Color(0xffFF9200)
                                   : const Color(0xffC8D1E5),
                             )
                           ],
                         ),
                       ],
                     ),
                   ),
                 )
             ),
           ]
          ),
        ),
        const SizedBox(height: 20,),

        pages[_currentIndex]

      ],
    );
  }
}
