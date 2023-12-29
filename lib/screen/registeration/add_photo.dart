import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:vibe_tag_web/screen/registeration/follow_people_screen.dart';
import '../../constant/reusabletext.dart';


class AddPhoto extends StatefulWidget {
  const AddPhoto({super.key});

  @override
  State<AddPhoto> createState() => _AddPhotoState();
}

class _AddPhotoState extends State<AddPhoto> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: const Color(0xffF1F4FB),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20,),
            Container(
              width: MediaQuery.sizeOf(context).width*0.50,
              height: MediaQuery.sizeOf(context).height*0.85,
              padding: const EdgeInsets.all(20),
              color: Colors.transparent,
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(  Icons.arrow_back,
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
                  const SizedBox(height: 20,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 30),

                    height: MediaQuery.sizeOf(context).height*0.66,decoration: BoxDecoration(
                      color: const Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(15)
                  ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ReusableText(title: '😎 Add a profile picture',weight: FontWeight.w700,size: 20,color: Color(0xff212121),),
                        const SizedBox(
                          height: 15,
                        ),
                        const ReusableText(
                          title:
                          "Your profile picture must have your face in it.",
                          color: Color(0xff7D8CAC),
                          size: 14,
                          weight: FontWeight.w400,
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        const Center(
                          child: CircleAvatar(
                            radius: 80,
                            backgroundColor: Color(0xffF1F4FB),
                            child: Center(
                              child: Icon(Icons.add_a_photo,color: Color(0xff7D8CAC),size: 70,),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Center(
                          child:  ReusableText(
                            title: "Take a photo or select\nfrom gallery",
                            alignment: TextAlign.center,
                            color: Color(0xff485470),
                            size: 14,
                            weight: FontWeight.w400,
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: (){
                            setState(() {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const FollowPeopleScreen()));
                            });
                          },
                          child:
                          Container(
                            height: 54,
                            width: MediaQuery.sizeOf(context).width*0.50,
                            decoration: BoxDecoration(
                                gradient: const  LinearGradient(colors:[
                                  Color(0xffFFC107),
                                  Color(0xffFF8205),
                                ]
                                ),
                                color: const Color(0xffCCCCCC),
                                borderRadius: BorderRadius.circular(12)
                            ),
                            child: const Center(
                              child: ReusableText(title: "Drag and Drop or browse",color: Colors.white,weight: FontWeight.w800,size: 17,),
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
