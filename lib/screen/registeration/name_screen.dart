import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:vibe_tag_web/screen/registeration/birthday_screen.dart';

import '../../constant/reusabletext.dart';


class NameScreen extends StatefulWidget {
  const NameScreen({super.key});

  @override
  State<NameScreen> createState() => _NameScreenState();
}

class _NameScreenState extends State<NameScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Color(0xffF1F4FB),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            Container(
              
              width: MediaQuery.sizeOf(context).width*0.50,
              height: MediaQuery.sizeOf(context).height*0.85,
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
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 40,vertical: 30),

                    height: MediaQuery.sizeOf(context).height*0.55,decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(15)
                  ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReusableText(title: '👋 Whats your name?',weight: FontWeight.w700,size: 20,color: Color(0xff212121),),
                        const SizedBox(height: 15,),
                        const ReusableText(title: "Tell us more about you! People inside use their real\nnames.",color: Color(0xff7D8CAC),size: 14,weight: FontWeight.w400,),
                        const SizedBox(height: 20,),
                        TextField(
                          style: const TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(
                                      color: Color(0xffC8D1E5)
                                  )
                              ),
                              hintText: "Mark",
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(color: Colors.black
                                  )
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(color: Colors.grey.shade600))),
                        ),
                        const SizedBox(height: 15,),
                        TextField(
                          style: const TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(
                                      color: Color(0xffC8D1E5)
                                  )
                              ),
                              hintText: "Daniel",
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(color: Colors.black
                                  )
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(color: Colors.grey.shade600))),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: (){
                            setState(() {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const BirthdayScreen()));
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
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Spacer(),
                                  ReusableText(title: "Save and Continue",color: Colors.white,weight: FontWeight.w800,size: 17,),
                                  Spacer(),
                                  Icon(Icons.arrow_circle_right_sharp,color: Color(0xf40000000),),
                                  SizedBox(width: 20,)
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20,),
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
