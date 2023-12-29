import 'package:flutter/material.dart';
import '../../../constant/reusabletext.dart';
import 'package:flutter/services.dart';
class PodcastsTab extends StatelessWidget {
  final List<String> list1=[
    'Assets/images/kids/Group 1000004223.png',
    'Assets/images/kids/Group 1000004223 (1).png',
    'Assets/images/kids/Group 1000004223 (2).png',
    'Assets/images/kids/Group 1000004223 (3).png',
    'Assets/images/kids/Group 1000004223 (4).png',
    'Assets/images/kids/Group 1000004223 (5).png',
    'Assets/images/kids/Group 1000004223 (6).png',
    'Assets/images/kids/Group 1000004223 (7).png',
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
    return Column(
       crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        GridView.builder(
          shrinkWrap: true,
          itemCount: list1.length,
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio:0.75,
            crossAxisCount: 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (BuildContext context, int index) {
            return  Container(
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
                      children: [
                        const ReusableText(
                          title:
                          'Call of Duty: Warzone 2 Solo Win Gameplay 14 Kills World Record',
                          size: 16,
                          weight: FontWeight.w700,
                          color: Color(0xff212121),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.remove_red_eye,
                              color: Color(0xffC8D1E5),
                            ),
                            const SizedBox(width: 2,),
                            const ReusableText(
                              title: '1k Views',
                              size: 13,
                              weight: FontWeight.w600,
                              color: Color(0xff485470),
                            ),
                            const SizedBox(width: 05,),

                            const Image(
                              image: AssetImage(
                                  "Assets/icons/chat_update/Heart-3.png"),
                            ),
                            const SizedBox(width: 2,),
                            const ReusableText(
                              title: '2 Reacts',
                              size: 13,
                              weight: FontWeight.w600,
                              color: Color(0xff485470),
                            ),
                            const SizedBox(width: 5,),
                          Container(
                            height: 5,width: 5,
                            decoration: const BoxDecoration(shape: BoxShape.circle,color: Color(0xff99A7C7)),),
                            const SizedBox(width: 2,),
                            const ReusableText(
                              title: '3 weeks ago',
                              size: 13,
                              weight: FontWeight.w600,
                              color: Color(0xff485470),
                            ),
                          ],
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.all(0),
                          leading: Image(
                            image: AssetImage(list2[index]),
                            width: 40,
                            height: 40,
                          ),
                          title: const ReusableText(
                            title: 'Gwen Stacy',
                            size: 14,
                            weight: FontWeight.w700,
                            color: Color(0xff212121),
                          ),
                          subtitle: const ReusableText(
                            title: '200k Followers',
                            size: 12,
                            weight: FontWeight.w500,
                            color: Color(0xff7D8CAC),
                          ),
                          trailing: const Icon(
                            Icons.more_vert,
                            color: Color(0xff7D8CAC),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        const SizedBox(height: 20),
        const Divider(height: 2,thickness: 2,color: Color(0xffF8F9FB),),
        const SizedBox(height: 20),
        const ReusableText(
          title:
          'Buzzins',
          size: 24,
          weight: FontWeight.w700,
          color: Color(0xff485470),
        ),
        const SizedBox(height: 20),
       SingleChildScrollView(
         scrollDirection: Axis.horizontal,physics: const ScrollPhysics(),
         child: Row(
           crossAxisAlignment: CrossAxisAlignment.start,children: List.generate(imges.length, (index) =>  Container(
           margin: const EdgeInsets.only(right: 10),
           decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.white,
         ),
           child: Padding(
             padding: const EdgeInsets.all(10),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,children: [
               Image(image: AssetImage(imges[index].toString())),
               const ReusableText(
                 title:
                 'Do this to get bigger\narm! Extreme wo...',
                 size: 16,
                 weight: FontWeight.w700,
                 color: Color(0xff212121),
               ),
               const SizedBox(height: 10,),
               const Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [

                   Icon(
                     Icons.remove_red_eye,
                     color: Color(0xffC8D1E5),
                   ),
                   SizedBox(width: 2,),
                   ReusableText(
                     title: '1k Views',
                     size: 13,
                     weight: FontWeight.w600,
                     color: Color(0xff485470),
                   ),
                 ],
               )
             ],
             ),
           ),
         )),
         ),
       )

      ],
    );
  }
}