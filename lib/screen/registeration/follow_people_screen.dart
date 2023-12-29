import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';

import '../../constant/reusabletext.dart';
import 'congrats_screen.dart';


class FollowPeopleScreen extends StatefulWidget {
  const FollowPeopleScreen({super.key});

  @override
  State<FollowPeopleScreen> createState() => _FollowPeopleScreenState();
}

class _FollowPeopleScreenState extends State<FollowPeopleScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Color(0xffF1F4FB),
      body: Center(
        child: Column(
         children: [
            Container(
              width: MediaQuery.sizeOf(context).width*0.50,
              height: MediaQuery.sizeOf(context).height*0.95,
              padding: EdgeInsets.all(20),
              color: Colors.transparent,
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(  Icons.arrow_back,
                          color: Colors.black,),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                      ),
                      const SizedBox(width: 30,),
                      Expanded(
                        child: LinearProgressBar(
                          maxSteps: 6,
                          minHeight: 10,
                          progressType: LinearProgressBar
                              .progressTypeLinear, // Use Linear progress
                          currentStep: 1,
                          progressColor: const Color(0xffFF9243),
                          backgroundColor: const Color(0xffF1F4FB),
                        ),
                      ),
                      const SizedBox(width: 30,),
                      const Text(
                        "1/6",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),

                    height: MediaQuery.sizeOf(context).height*0.80,decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(15)
                  ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            Icon(Icons.local_fire_department,color: Colors.yellow,),
                            SizedBox(
                              width: 15,
                            ),
                            ReusableText(
                              title: 'Follow Famous People',
                              weight: FontWeight.w700,
                              size: 20,
                              color: Color(0xff212121),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const ReusableText(
                          title:
                          "Your profile picture must have your face in it.",
                          color: Color(0xff7D8CAC),
                          size: 14,
                          weight: FontWeight.w400,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child
                              : SingleChildScrollView(
                            physics: ScrollPhysics(),
                           scrollDirection: Axis.vertical,
                            child: Column(
                              children: List.generate(5, (index) =>     Container(
                              clipBehavior: Clip.antiAlias,
                              padding: EdgeInsets.all(15),
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                  borderRadius:BorderRadius.circular(12),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0xf30000000),
                                        offset: Offset(0,4),
                                        blurRadius: 0.3,
                                        spreadRadius: 0.3

                                    ),
                                    BoxShadow(
                                        color: Color(0xf30000000),
                                        offset: Offset(4,0),
                                        blurRadius: 0.3,
                                        spreadRadius: 0.3

                                    ),

                                  ],
                                  color: Colors.white

                              ),
                              child: Column(
                                children: [
                                  ListTile(
                                    contentPadding: EdgeInsets.zero,
                                    leading: CircleAvatar(
                                      backgroundImage: AssetImage("Assets/images/log_in_sign_up/Ellipse 752 (1).png"),

                                    ),
                                    title: Row(
                                      children: [
                                        ReusableText(title: "Justin Wilson",weight: FontWeight.w600,size:15 ,color: Color(0xff212121),),
                                        SizedBox(width: 10,),
                                        Image(image: AssetImage("Assets/icons/register/Subtract.png")),
                                      ],
                                    ),
                                    subtitle: ReusableText(title: '@david_wilson23',size: 12,weight: FontWeight.w500,color: Color(0xff7D8CAC),),
                                    trailing: Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Color(0xffFF9243)),
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: ReusableText(
                                        title: 'Follow',
                                        size: 14,weight: FontWeight.w600,color: Color(0xffFF9243),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: [
                                            ReusableText(title: "103k",size: 14,weight: FontWeight.w600,color: Color(0xff485470),),
                                            ReusableText(title: "Like",size: 11,weight: FontWeight.w400,color: Color(0xff7D8CAC),),
                                          ],
                                        ),
                                        Expanded(child: VerticalDivider(thickness: 10,width:3,color: Color(0xffE6EAF3),)),
                                        Column(
                                          children: [
                                            ReusableText(title: "24.5k",size: 14,weight: FontWeight.w600,color: Color(0xff485470),),
                                            ReusableText(title: "Followers",size: 11,weight: FontWeight.w400,color: Color(0xff7D8CAC),),
                                          ],
                                        ),
                                        Expanded(child: VerticalDivider(thickness: 3,width:3,color: Color(0xffE6EAF3),)),
                                        Column(
                                          children: [
                                            ReusableText(title: "104k",size: 14,weight: FontWeight.w600,color: Color(0xff485470),),
                                            ReusableText(title: "Following",size: 11,weight: FontWeight.w400,color: Color(0xff7D8CAC),),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),),
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*1,
                          child: InkWell(
                            onTap: (){
                              setState(() {
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>CongratsScreen()));
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 274,
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(colors: [
                                    Color(0xffFFC107),
                                    Color(0xffFF8205),
                                  ]),
                                  color: const Color(0xffCCCCCC),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                child: ReusableText(
                                  title: "Drag and Drop or browse",
                                  color: Colors.white,
                                  weight: FontWeight.w800,
                                  size: 17,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),));

  }
}
