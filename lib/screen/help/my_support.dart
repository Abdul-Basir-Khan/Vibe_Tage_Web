import 'package:flutter/material.dart';

import '../../constant/reusabletext.dart';



class MySupportTab extends StatefulWidget {
  const MySupportTab({Key? key}) : super(key: key);

  @override
  State<MySupportTab> createState() => _MySupportTabState();
}

class _MySupportTabState extends State<MySupportTab> {
  int _currentIndextC=0;


  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      physics: const ScrollPhysics(),
      children: [
     Padding(
       padding: const EdgeInsets.all(10.0),
       child: Column(
         children: [
           const SizedBox(height: 10,),
           Row(
             children: [
               Expanded(

                 child: TextField(

                   decoration: InputDecoration(
                     hintStyle: const TextStyle(
                         fontWeight: FontWeight.w600,
                         fontSize: 14,
                         color: Color(0xff99A7C7)),
                     hintText: 'Search question or articles',
                     prefixIcon: const Image(
                       image: AssetImage(
                           "Asset/icons/chat_update/Search-4.png"),
                     ), // Prefix icon
                     filled: true,
                     fillColor: Colors.white,
                     enabledBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(30.0),
                       borderSide: const BorderSide(
                           color: Color(0xffC8D1E5)), // Color when not focused
                     ),
                     focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(30.0),
                       borderSide: const BorderSide(
                           color: Color(0xffC8D1E5)), // Color when focused
                     ),
                   ),
                 ),
               ),
               const SizedBox(width: 10,),

               Container(
                 width: 127,
                 padding: const EdgeInsets.all(10),
                 decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(30),
                     border: Border.all(color: const Color(0xffC8D1E5))
                 ),
                 child: Row(
                   children: const [
                     ReusableText(
                       title: 'All',
                       size: 16,
                       weight: FontWeight.w500,
                       color: Color(0xff485470),
                     ),
                     Spacer(),
                     Icon(Icons.keyboard_arrow_down_sharp,size: 40,color: Color(0xffC8D1E5),)
                   ],
                 ),
               )
             ],
           ),
           const SizedBox(height: 20,),
         ],
       ),
     ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
            color: Color(0xffF1F4FB)
          ),
          child: Column(
            children: [
              const SizedBox(height: 10,),
              Container(
                height: 131,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        ReusableText(
                          title: '#7245484',
                          size: 14,
                          weight: FontWeight.w500,
                          color: Color(0xffFF9200),
                        ),
                        Spacer(),
                        Icon(Icons.more_vert,color: Color(0xffC8D1E5),)
                      ],
                    ),
                    const SizedBox(height: 10,),
                    const ReusableText(
                      title: 'Request for removing product listing\nfrom my Homepage',
                      size: 16,
                      weight: FontWeight.w600,
                      color: Color(0xff212121),
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      children: [
                        const ReusableText(
                          title: '23 May, 2023',
                          size: 12,
                          weight: FontWeight.w500,
                          color: Color(0xff7D8CAC),
                        ),
                        const Spacer(),
                        Container(
                          width: 71,height: 24,
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(26),
                            color: const Color(0xff2998FF),
                          ),
                          child: const Center(
                            child:  ReusableText(
                              title: 'Active',
                              size: 12,
                              weight: FontWeight.w600,
                              color: Color(0xffFFFFFF),
                            ),
                          ),

                        )
                      ],
                    )

                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                height: 131,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        ReusableText(
                          title: '#7245484',
                          size: 14,
                          weight: FontWeight.w500,
                          color: Color(0xffFF9200),
                        ),
                        Spacer(),
                        Icon(Icons.more_vert,color: Color(0xffC8D1E5),)
                      ],
                    ),
                    const SizedBox(height: 10,),
                    const ReusableText(
                      title: 'Request for removing product listing\nfrom my Homepage',
                      size: 16,
                      weight: FontWeight.w600,
                      color: Color(0xff212121),
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      children: [
                        const ReusableText(
                          title: '23 May, 2023',
                          size: 12,
                          weight: FontWeight.w500,
                          color: Color(0xff7D8CAC),
                        ),
                        const Spacer(),
                        Container(
                          width: 71,height: 24,
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(26),
                            color: const Color(0xff7D8CAC),
                          ),
                          child: const Center(
                            child:  ReusableText(
                              title: 'Solved',
                              size: 12,
                              weight: FontWeight.w600,
                              color: Color(0xffFFFFFF),
                            ),
                          ),

                        )
                      ],
                    )

                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                height: 131,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        ReusableText(
                          title: '#7245484',
                          size: 14,
                          weight: FontWeight.w500,
                          color: Color(0xffFF9200),
                        ),
                        Spacer(),
                        Icon(Icons.more_vert,color: Color(0xffC8D1E5),)
                      ],
                    ),
                    const SizedBox(height: 10,),
                    const ReusableText(
                      title: 'Request for removing product listing\nfrom my Homepage',
                      size: 16,
                      weight: FontWeight.w600,
                      color: Color(0xff212121),
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      children: [
                        const ReusableText(
                          title: '23 May, 2023',
                          size: 12,
                          weight: FontWeight.w500,
                          color: Color(0xff7D8CAC),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: (){
                            setState(() {
                            //  Navigator.push(context, MaterialPageRoute(builder: (context)=>const ChampionMobile()));
                            });
                          },
                          child: Container(
                            width: 71,height: 24,
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(26),
                              color: const Color(0xff2998FF),
                            ),
                            child: const Center(
                              child:  ReusableText(
                                title: 'Active',
                                size: 12,
                                weight: FontWeight.w600,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )

                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                height: 131,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        ReusableText(
                          title: '#7245484',
                          size: 14,
                          weight: FontWeight.w500,
                          color: Color(0xffFF9200),
                        ),
                        Spacer(),
                        Icon(Icons.more_vert,color: Color(0xffC8D1E5),)
                      ],
                    ),
                    const SizedBox(height: 10,),
                    const ReusableText(
                      title: 'Request for removing product listing\nfrom my Homepage',
                      size: 16,
                      weight: FontWeight.w600,
                      color: Color(0xff212121),
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      children: [
                        const ReusableText(
                          title: '23 May, 2023',
                          size: 12,
                          weight: FontWeight.w500,
                          color: Color(0xff7D8CAC),
                        ),
                        const Spacer(),
                        Container(
                          width: 71,height: 24,
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(26),
                            color: const Color(0xff2998FF),
                          ),
                          child: const Center(
                            child:  ReusableText(
                              title: 'Active',
                              size: 12,
                              weight: FontWeight.w600,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ),
                      ],
                    )

                  ],
                ),
              ),
              const SizedBox(height: 20,),
            ],
          ),
        ),
        const SizedBox(height: 40,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 31,width: 31,
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                border: Border.all(color: const Color(0xff99A7C7))
              ),
              child: const Icon(
                Icons.arrow_back_ios,color: Color(0xff99A7C7),),
            ),
            const SizedBox(width: 10,),
            InkWell(
              onTap: (){
                setState(() {
                  _currentIndextC=0;
                });
              },
              child: Container(
                height: 31,width: 31,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: _currentIndextC==0?Colors.transparent:const Color(0xffF1F4FB),
                    border: Border.all(color:_currentIndextC==0?const Color(0xff000000):Colors.transparent)
                ),
                child: Center(
                  child: ReusableText(
                    title: '1',
                    size: 13,
                    weight: FontWeight.w600,
                    color: _currentIndextC==0?Colors.black:const Color(0xff7D8CAC),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10,),
            InkWell(
              onTap: (){
                setState(() {
                  _currentIndextC=1;
                });
              },
              child: Container(
                height: 31,width: 31,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: _currentIndextC==1?Colors.transparent:const Color(0xffF1F4FB),
                    border: Border.all(color:_currentIndextC==1?const Color(0xff000000):Colors.transparent)
                ),
                child: Center(
                  child: ReusableText(
                    title: '2',
                    size: 13,
                    weight: FontWeight.w600,
                    color: _currentIndextC==1?Colors.black:const Color(0xff7D8CAC),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10,),
            InkWell(
              onTap: (){
                setState(() {
                  _currentIndextC=2;
                });
              },
              child: Container(
                height: 31,width: 31,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: _currentIndextC==2?Colors.transparent:const Color(0xffF1F4FB),
                    border: Border.all(color:_currentIndextC==2?const Color(0xff000000):Colors.transparent)
                ),
                child: Center(
                  child: ReusableText(
                    title: '3',
                    size: 13,
                    weight: FontWeight.w600,
                    color: _currentIndextC==2?Colors.black:const Color(0xff7D8CAC),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10,),
            Container(
              height: 31,width: 31,
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: const Color(0xff99A7C7))
              ),
              child: const Icon(
                Icons.arrow_forward_ios,color: Color(0xff99A7C7),),
            ),
          ],
        )


      ],
    );
  }
}
