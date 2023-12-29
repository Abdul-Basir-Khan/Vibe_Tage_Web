import 'dart:ui';


import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../../constant/reusabletext.dart';

class PlaylistDialog extends StatefulWidget {
  const PlaylistDialog({Key? key}) : super(key: key);

  @override
  State<PlaylistDialog> createState() => _PlaylistDialogState();
}

class _PlaylistDialogState extends State<PlaylistDialog> {
  @override
  Widget build(BuildContext context) {
    return

      BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Dialog(
          backgroundColor: const Color(0xFFFFFFFF),
          insetPadding: EdgeInsets.symmetric(horizontal: 480,vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: ListView(
              physics: ScrollPhysics(),
              scrollDirection: Axis.vertical,
              children: [
                Row(

                  children: [
                    Icon(Icons.arrow_back,color: Color(0xff212121),),
                    Spacer(),
                    const ReusableText(
                      title: 'Edit Playlist',
                      size: 22,
                      weight: FontWeight.w700,
                      color: Color(0xff212121),
                    ),
                    Spacer(),

                  ],
                ),
                SizedBox(height: 10,),
                const Divider(
                  height: 3,
                  thickness: 3,
                  color: Color(
                      0xffC8D1E5),
                ),
                SizedBox(height: 10,),
                ListTile(
                    contentPadding: EdgeInsets
                        .zero,
                    title: const Text(
                      "Cover Image",
                      style: TextStyle(
                          fontWeight:
                          FontWeight
                              .w700,
                          fontSize: 16,
                          color: Color(
                              0xff212121)),
                    ),
                    subtitle: const Text(
                      "Recommended Ratio of 12:9.",
                      style: TextStyle(
                          fontWeight:
                          FontWeight
                              .w400,
                          fontSize: 12,
                          color: Color(
                              0xff485470)),
                    ),
                    trailing:
                    DottedBorder(
                      color: const Color(
                          0xffC8D1E5),
                      borderType: BorderType
                          .RRect,
                      radius: const Radius
                          .circular(
                          20),
                      child: ClipRRect(
                        clipBehavior: Clip
                            .antiAlias,
                        borderRadius: const BorderRadius
                            .all(
                            Radius
                                .circular(
                                20)),
                        child: Container(
                          height: 33,
                          width: 100,
                          decoration: BoxDecoration(
                              color: const Color(
                                  0xffF1F4FB),
                              borderRadius: BorderRadius
                                  .circular(
                                  20)
                          ),
                          child: const Row(

                            mainAxisAlignment: MainAxisAlignment
                                .center,
                            crossAxisAlignment: CrossAxisAlignment
                                .center,
                            children: [
                              Icon(
                                Icons
                                    .add_a_photo,
                                color: Color(
                                    0xff99A7C7),),
                              SizedBox(
                                width: 10,),
                              Text(
                                "Upload",
                                style: TextStyle(
                                    fontWeight:
                                    FontWeight
                                        .w600,
                                    fontSize: 13,
                                    color: Color(
                                        0xff485470)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                ),
                SizedBox(height: 10,),
                Image(
                    fit: BoxFit.cover,
                    image: AssetImage("Assets/images/saved/Rectangle 23850.png")),
                SizedBox(height: 10,),
                const ReusableText(
                  title:  "Title",
                  size: 16,
                  weight: FontWeight.w700,
                  color: Color(0xff120D26),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 54,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(
                          0xffFFFFFF),
                      borderRadius:
                      BorderRadius
                          .circular(10)),
                  child: TextFormField(
                    decoration:
                    InputDecoration(

                        enabledBorder:
                        OutlineInputBorder(
                            borderRadius: BorderRadius
                                .circular(
                                10),
                            borderSide: const BorderSide(
                              color: Color(
                                  0xffC8D1E5),
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius
                                .circular(
                                10),
                            borderSide: const BorderSide(
                              color: Color(
                                  0xffC8D1E5),
                            )
                        ),

                        hintText:
                        'My Funny Videos Collection',
                        hintStyle: const TextStyle(
                            fontWeight:
                            FontWeight
                                .w600,
                            fontSize: 16,
                            color: Color(
                                0xff212121))),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),



                const ReusableText(
                  title:  "Visibility",
                  size: 16,
                  weight: FontWeight.w700,
                  color: Color(0xff120D26),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 54,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(
                          0xffFFFFFF),
                      borderRadius:
                      BorderRadius
                          .circular(10)),
                  child: TextFormField(
                    decoration:
                    InputDecoration(
                      prefixIcon: Icon(Icons.lock,color: Color(0xff99A7C7),),
                      suffixIcon: Icon(Icons.keyboard_arrow_down,color: Color(0xff99A7C7),),

                        enabledBorder:
                        OutlineInputBorder(
                            borderRadius: BorderRadius
                                .circular(
                                10),
                            borderSide: const BorderSide(
                              color: Color(
                                  0xffC8D1E5),
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius
                                .circular(
                                10),
                            borderSide: const BorderSide(
                              color: Color(
                                  0xffC8D1E5),
                            )
                        ),

                        hintText:
                        'Private',
                        hintStyle: const TextStyle(
                            fontWeight:
                            FontWeight
                                .w600,
                            fontSize: 16,
                            color: Color(
                                0xff212121))),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),


                const ReusableText(
                  title:  "Category",
                  size: 16,
                  weight: FontWeight.w700,
                  color: Color(0xff120D26),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 54,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(
                          0xffFFFFFF),
                      borderRadius:
                      BorderRadius
                          .circular(10)),
                  child: TextFormField(
                    decoration:
                    InputDecoration(
                        suffixIcon: Icon(Icons.keyboard_arrow_down,color: Color(0xff99A7C7),),

                        enabledBorder:
                        OutlineInputBorder(
                            borderRadius: BorderRadius
                                .circular(
                                10),
                            borderSide: const BorderSide(
                              color: Color(
                                  0xffC8D1E5),
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius
                                .circular(
                                10),
                            borderSide: const BorderSide(
                              color: Color(
                                  0xffC8D1E5),
                            )
                        ),

                        hintText:
                        'Funny Videos',
                        hintStyle: const TextStyle(
                            fontWeight:
                            FontWeight
                                .w600,
                            fontSize: 16,
                            color: Color(
                                0xff212121))),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),


                const ReusableText(
                  title:  "Background Color",
                  size: 16,
                  weight: FontWeight.w700,
                  color: Color(0xff120D26),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 54,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(
                          0xffFFFFFF),
                      borderRadius:
                      BorderRadius
                          .circular(10)),
                  child: TextFormField(
                    decoration:
                    InputDecoration(
                      prefixIcon: Icon(Icons.circle,color: Color(0xff0176FF),),
                        suffixIcon: Icon(Icons.keyboard_arrow_down,color: Color(0xff99A7C7),),

                        enabledBorder:
                        OutlineInputBorder(
                            borderRadius: BorderRadius
                                .circular(
                                10),
                            borderSide: const BorderSide(
                              color: Color(
                                  0xffC8D1E5),
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius
                                .circular(
                                10),
                            borderSide: const BorderSide(
                              color: Color(
                                  0xffC8D1E5),
                            )
                        ),

                        hintText:
                        'Blue',
                        hintStyle: const TextStyle(
                            fontWeight:
                            FontWeight
                                .w600,
                            fontSize: 16,
                            color: Color(
                                0xff212121))),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),


                Container(
                  height: 54,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xffFF9200))
                ),
                child: Center(
                  child:      const ReusableText(
                    title:  "Done",
                    size: 16,
                    weight: FontWeight.w700,
                    color: Color(0xffFF9200),
                  ),
                ),
                )
              ],
            ),
          ),
        ),
      );

  }
}
