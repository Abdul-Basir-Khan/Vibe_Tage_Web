import 'package:flutter/material.dart';

import '../../../constant/reusabletext.dart';

class BrowseForumTab extends StatefulWidget {
  const BrowseForumTab({Key? key}) : super(key: key);

  @override
  State<BrowseForumTab> createState() => _BrowseForumTabState();
}

class _BrowseForumTabState extends State<BrowseForumTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child:
      ListView(
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              const ReusableText(
                title: 'Health & Wellness',
                size: 16,
                weight: FontWeight.w700,
                color: Color(0xff485470),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: Color(0xff485470),
                ),
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: const Color(0xffC8D1E5)),
                color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffF1F4FB)),
                      child: const Center(
                        child: Image(
                          color: Color(0xff99A7C7),
                          image: AssetImage("Assets/icons/form/Group.png"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReusableText(
                          title: 'Fitness',
                          size: 15,
                          weight: FontWeight.w700,
                          color: Color(0xff212121),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        ReusableText(
                          title:
                              'Exercise and Nutrition for Optimal Fitness" - This is topic emphasizes the importance of regular exercise a...',
                          size: 12,
                          weight: FontWeight.w500,
                          color: Color(0xff7D8CAC),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReusableText(
                          title: 'Topic:',
                          size: 13,
                          weight: FontWeight.w500,
                          color: Color(0xff485470),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        ReusableText(
                          title: '05',
                          size: 13,
                          weight: FontWeight.w500,
                          color: Color(0xff485470),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReusableText(
                          title: 'Post:',
                          size: 13,
                          weight: FontWeight.w500,
                          color: Color(0xff485470),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        ReusableText(
                          title: '01',
                          size: 13,
                          weight: FontWeight.w500,
                          color: Color(0xff485470),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: const Color(0xffC8D1E5)),
                color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffF1F4FB)),
                      child: const Center(
                        child: Image(
                          color: Color(0xff99A7C7),
                          image: AssetImage("Assets/icons/form/Group.png"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReusableText(
                          title: 'Nutrition',
                          size: 15,
                          weight: FontWeight.w700,
                          color: Color(0xff212121),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        ReusableText(
                          title:
                              'Exercise and Nutrition for Optimal Fitness" - This is topic emphasizes the importance of regular exercise a...',
                          size: 12,
                          weight: FontWeight.w500,
                          color: Color(0xff7D8CAC),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage(
                              "Assets/icons/form/Ellipse 910 (1).png"),
                        ),
                        const SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const ReusableText(
                                  title: 'Mark Henry',
                                  size: 17,
                                  weight: FontWeight.w700,
                                  color: Color(0xff485470),
                                ),
                                const SizedBox(width: 10,),
                                Container(
                                 padding: const EdgeInsets.all(3),
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffFF9200)),
                                  child: const ReusableText(
                                    title: '2',
                                    size: 11,
                                    weight: FontWeight.w500,
                                    color: Color(0xffFFFFFF),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 5,),
                            const ReusableText(
                              title: '1d ago',
                              size: 12,
                              weight: FontWeight.w500,
                              color: Color(0xff7D8CAC),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Spacer(),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReusableText(
                          title: 'Topic:',
                          size: 13,
                          weight: FontWeight.w500,
                          color: Color(0xff485470),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        ReusableText(
                          title: '05',
                          size: 13,
                          weight: FontWeight.w500,
                          color: Color(0xff485470),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReusableText(
                          title: 'Post:',
                          size: 13,
                          weight: FontWeight.w500,
                          color: Color(0xff485470),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        ReusableText(
                          title: '01',
                          size: 13,
                          weight: FontWeight.w500,
                          color: Color(0xff485470),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(height: 20,),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),color: Colors.white
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child:   Column(

                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(

                            height: 40,width: 40,

                            decoration: const BoxDecoration(

                                shape: BoxShape.circle,color: Color(0xffF1F4FB)

                            ),

                            child: const Center(

                              child: Image(

                                color: Color(0xff99A7C7),

                                image: AssetImage("Assets/icons/form/Group.png"),),

                            ),



                          ),

                          const SizedBox(width: 10,),

                          Column(

                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [

                              const ReusableText(title: 'Fitness',size: 15,weight: FontWeight.w700,color: Color(0xff212121),),

                              const SizedBox(height: 5,),
                              const ReusableText(title: 'Exercise and Nutrition for Optimal Fitness" - This is topic emphasizes the importance of regular exercise a...',size: 12,weight: FontWeight.w500,color: Color(0xff7D8CAC),),


                              // Row(
                              //
                              //   children: [
                              //
                              //     const ReusableText(title: 'Topic: 05',size: 13,weight: FontWeight.w500,color: Color(0xff485470),),
                              //
                              //     const SizedBox(width: 20,),
                              //
                              //     Container(
                              //
                              //       height: 6,width: 6,decoration: const BoxDecoration(
                              //
                              //       shape: BoxShape.circle,color: Color(0xff7D8CAC),
                              //
                              //     ),
                              //
                              //     ),
                              //
                              //     const SizedBox(width: 10,),
                              //
                              //     const ReusableText(title: 'Post: 01',size: 13,weight: FontWeight.w500,color: Color(0xff485470),),
                              //
                              //
                              //
                              //   ],
                              //
                              // ),



                            ],

                          ),
                          Spacer(),
                          Container(
                            height: 36,
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                border: Border.all(color: Color(0xffFF9200),),
                                color:Colors.white
                            ),
                            child: Center(
                              child:    ReusableText(title: 'Create new Topic',size: 14,weight: FontWeight.w600,color: Color(0xffFF9200),),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 36,width: 36,decoration: BoxDecoration(
                            shape: BoxShape.circle,color:Color(0xffF1F4FB),
                          ),
                            child: Icon(Icons.share,color:Color(0xff99A7C7)),
                          ),


                        ],

                      ),



                    ],

                  ),
                ),

                Divider(thickness: 5,height: 5,color: Color(0xffF0F3FA),),
                SizedBox(height: 10,),
                Row(
                  children: [
                    const ReusableText(
                      title: 'Topic',
                      size: 20,
                      weight: FontWeight.w700,
                      color: Color(0xff485470),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Color(0xff485470),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),color: Colors.white,
                            border: Border.all(color: Color(0xffC8D1E5))
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const ReusableText(title: 'Second text',size: 15,weight: FontWeight.w700,color: Color(0xff485470),),
                                    SizedBox(height: 5,),
                                    const ReusableText(title: 'Last activated: 2 days ago',size: 12,weight: FontWeight.w500,color: Color(0xff7D8CAC),),
                                  ],
                                ),
                                const Spacer(),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "Assets/icons/form/Ellipse 910 (1).png"),
                                    ),
                                    const SizedBox(width: 10,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const ReusableText(
                                          title: 'Mark Henry',
                                          size: 17,
                                          weight: FontWeight.w700,
                                          color: Color(0xff485470),
                                        ),
                                        const SizedBox(height: 5,),
                                        const ReusableText(
                                          title: '1d ago',
                                          size: 12,
                                          weight: FontWeight.w500,
                                          color: Color(0xff7D8CAC),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    ReusableText(
                                      title: 'Topic',
                                      size: 12,
                                      weight: FontWeight.w500,
                                      color: Color(0xff7D8CAC),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    ReusableText(
                                      title: '1 week ago ',
                                      size: 13,
                                      weight: FontWeight.w700,
                                      color: Color(0xff485470),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 15,),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: const [
                                    ReusableText(
                                      title: 'Replies',
                                      size: 12,
                                      weight: FontWeight.w500,
                                      color: Color(0xff7D8CAC),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    ReusableText(
                                      title: '41',
                                      size: 13,
                                      weight: FontWeight.w700,
                                      color: Color(0xff485470),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 15,),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    ReusableText(
                                      title: 'Views',
                                      size: 12,
                                      weight: FontWeight.w500,
                                      color: Color(0xff7D8CAC),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    ReusableText(
                                      title: '45',
                                      size: 13,
                                      weight: FontWeight.w700,
                                      color: Color(0xff485470),
                                    ),
                                  ],
                                ),

                              ],
                            ),

                          ],
                        ),

                      ),
                      SizedBox(height: 10,),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),color: Colors.white,
                            border: Border.all(color: Color(0xffC8D1E5))
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const ReusableText(title: 'Topic Name Here',size: 15,weight: FontWeight.w700,color: Color(0xff485470),),
                                    SizedBox(height: 5,),
                                    const ReusableText(title: 'Last activated: 2 days ago',size: 12,weight: FontWeight.w500,color: Color(0xff7D8CAC),),
                                  ],
                                ),
                                const Spacer(),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "Assets/icons/form/Ellipse 910 (1).png"),
                                    ),
                                    const SizedBox(width: 10,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const ReusableText(
                                          title: 'Mark Henry',
                                          size: 17,
                                          weight: FontWeight.w700,
                                          color: Color(0xff485470),
                                        ),
                                        const SizedBox(height: 5,),
                                        const ReusableText(
                                          title: '1d ago',
                                          size: 12,
                                          weight: FontWeight.w500,
                                          color: Color(0xff7D8CAC),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    ReusableText(
                                      title: 'Topic',
                                      size: 12,
                                      weight: FontWeight.w500,
                                      color: Color(0xff7D8CAC),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    ReusableText(
                                      title: '1 week ago ',
                                      size: 13,
                                      weight: FontWeight.w700,
                                      color: Color(0xff485470),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 15,),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: const [
                                    ReusableText(
                                      title: 'Replies',
                                      size: 12,
                                      weight: FontWeight.w500,
                                      color: Color(0xff7D8CAC),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    ReusableText(
                                      title: '41',
                                      size: 13,
                                      weight: FontWeight.w700,
                                      color: Color(0xff485470),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 15,),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    ReusableText(
                                      title: 'Views',
                                      size: 12,
                                      weight: FontWeight.w500,
                                      color: Color(0xff7D8CAC),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    ReusableText(
                                      title: '45',
                                      size: 13,
                                      weight: FontWeight.w700,
                                      color: Color(0xff485470),
                                    ),
                                  ],
                                ),

                              ],
                            ),

                          ],
                        ),

                      ),


                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
