import 'package:flutter/material.dart';

import '../../constant/reusabletext.dart';


class HelpRequest extends StatefulWidget {
  const HelpRequest({Key? key}) : super(key: key);

  @override
  State<HelpRequest> createState() => _HelpRequestState();
}

class _HelpRequestState extends State<HelpRequest> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,elevation: 0,
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back_outlined,color: Color(0xff000000),),onPressed: (){
          Navigator.pop(context);
        },),
        title: const ReusableText(
          title: 'Send a Request',
          size: 17,
          weight: FontWeight.w500,
          color: Color(0xff000000),
        ),

      ),
      backgroundColor: Colors.white,body: ListView(

      children: [
        const Divider(thickness: 3,height: 3,color: Color(0xf257D8CAC),),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 80,padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xf12FF9200)
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.error_outline,color: Color(0xffFF9200),),
                    SizedBox(width: 15,),
                    ReusableText(
                      title: 'Do not share sensitive information\n(attachments or text). Ex. Your credit card\ndetails or personal ID numbers.',
                      size: 15,
                      weight: FontWeight.w500,
                      color: Color(0xffFF9200),
                      alignment: TextAlign.start,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              ReusableText(
                title: 'Subject',
                size: 16,
                weight: FontWeight.w600,
                color: Color(0xff485470),
                alignment: TextAlign.start,
              ),
              SizedBox(height: 10,),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white, // Enabled color
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Color(0xFFC8D1E5)), // Border color when not focused
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Color(0xFFC8D1E5)), // Border color when focused
              ),
            ),
          ),
              SizedBox(height: 20,),
              ReusableText(
                title: 'Description',
                size: 16,
                weight: FontWeight.w600,
                color: Color(0xff485470),
                alignment: TextAlign.start,
              ),
              SizedBox(height: 10,),
              TextField(
                maxLines: 8,
                decoration: InputDecoration(
                  hintText: '0/2500',
                  hintTextDirection:TextDirection.rtl ,
                  filled: true,
                  fillColor: Colors.white, // Enabled color
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Color(0xFFC8D1E5)), // Border color when not focused
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Color(0xFFC8D1E5)), // Border color when focused
                  ),
                ),
              ),
SizedBox(height: 190,),
              Row(
                children: [
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 58,width: 234,decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffFFC107),
                        Color(0xffFF8205),
                      ]
                    )
                  ),
                    child: Row(
                      crossAxisAlignment:CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      ReusableText(
                        title: 'Submit Request',
                        size: 16,
                        weight: FontWeight.w800,
                        color: Color(0xffFFFFFF),
                        alignment: TextAlign.start,
                      ),
                      SizedBox(width: 50,),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                        shape: BoxShape.circle,color: Color(0xf20000000)
                      ),
                      child: Icon(Icons.arrow_forward,color: Colors.white,),
                      )
                    ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),

      ],
    ),
    ));
  }
}
