import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';

import '../../constant/reusabletext.dart';


class CongratsScreen extends StatefulWidget {
  const CongratsScreen({super.key});

  @override
  State<CongratsScreen> createState() => _CongratsScreenState();
}

class _CongratsScreenState extends State<CongratsScreen> {

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
                        const Spacer(),
                        Center(
                          child: Image(

                              image: AssetImage("Assets/icons/register/Group 27.png")),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const   Center(
                          child: ReusableText(
                            title: "Congratulations!",
                            color: Color(0xffFF9243),
                            size: 24,
                            weight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const   Center(
                          child: ReusableText(
                            title: "Your profile has been approved successfully",
                            color: Color(0xff7D8CAC),
                            size: 14,
                            weight: FontWeight.w600,
                          ),
                        ),
                        const Spacer(),
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
