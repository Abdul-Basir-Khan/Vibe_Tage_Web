import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';
import 'package:vibe_tag_web/screen/registeration/select_city_screen.dart';

import '../../constant/reusabletext.dart';


class IdentityScreen extends StatefulWidget {
  const IdentityScreen({super.key});

  @override
  State<IdentityScreen> createState() => _IdentityScreenState();
}

class _IdentityScreenState extends State<IdentityScreen> {
  bool _isVisible = false;
  bool _isVisible1 = false;
  bool _isVisible2 = false;

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

                    height: MediaQuery.sizeOf(context).height*0.66,decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(15)
                  ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReusableText(title: '🆔 How do you identify?',weight: FontWeight.w700,size: 20,color: Color(0xff212121),),
                        const SizedBox(height: 15,),
                        const ReusableText(title: "Tell us more about you! We need this for\ncommunity safety.",color: Color(0xff7D8CAC),size: 14,weight: FontWeight.w400,),
                        const SizedBox(height: 20,),
                        InkWell(
                          onTap: (){
                            setState(() {
                              _isVisible=!_isVisible;
                              _isVisible1=false;
                              _isVisible2=false;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),

                              border: Border.all(color:_isVisible?Color(0xff000000) :Color(0xffC8D1E5),
                              ),
                            ),
                            child: Row(
                              children: [
                                ReusableText(title:'Male',size:16 ,weight: FontWeight.w600,color: _isVisible?Color(0xff000000) :Color(0xffC8D1E5),),
                                Spacer(),
                                Visibility(
                                    visible: _isVisible,
                                    child: Icon(Icons.done,color: Colors.black,))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        InkWell(
                          onTap: (){
                            setState(() {
                              _isVisible1=!_isVisible1;
                              _isVisible=false;
                              _isVisible2=false;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),

                              border: Border.all(color:_isVisible1?Color(0xff000000) :Color(0xffC8D1E5),
                              ),
                            ),
                            child: Row(
                              children: [
                                ReusableText(title:'Female',size:16 ,weight: FontWeight.w600,color: _isVisible1?Color(0xff000000) :Color(0xffC8D1E5),),
                                Spacer(),
                                Visibility(
                                    visible: _isVisible1,
                                    child: Icon(Icons.done,color: Colors.black,))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        InkWell(
                          onTap: (){
                            setState(() {
                              _isVisible2=!_isVisible2;
                              _isVisible1=false;
                              _isVisible=false;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),

                              border: Border.all(color:_isVisible2?Color(0xff000000) :Color(0xffC8D1E5),
                              ),
                            ),
                            child: Row(
                              children: [
                                ReusableText(title:'Others',size:16 ,weight: FontWeight.w600,color: _isVisible2?Color(0xff000000) :Color(0xffC8D1E5),),
                                Spacer(),
                                Visibility(
                                    visible: _isVisible2,
                                    child: Icon(Icons.done,color: Colors.black,))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        InkWell(
                          onTap: (){
                            setState(() {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const CityScreen()));
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
