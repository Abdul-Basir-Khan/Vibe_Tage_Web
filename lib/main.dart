import 'package:flutter/material.dart';
import 'package:vibe_tag_web/screen/Playlist/playlist_screen.dart';
import 'package:vibe_tag_web/screen/Videos/home_video_screen.dart';
import 'package:vibe_tag_web/screen/forum_screen/forum_screen.dart';
import 'package:vibe_tag_web/screen/help/help_center.dart';
import 'package:vibe_tag_web/screen/registeration/add_photo.dart';
import 'package:vibe_tag_web/screen/registeration/name_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home:const ForumScreen() ,
    );
  }
}


