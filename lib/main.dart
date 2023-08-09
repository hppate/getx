

import 'dart:typed_data';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inpractice/pageviewbuilder.dart';
import 'package:inpractice/pdffirstpage.dart';
import 'package:inpractice/videoplayer.dart';

import 'package:pdf/widgets.dart' as pw;
import 'package:video_player/video_player.dart';

import 'classpractice/first.dart';
import 'filechachemanagerforimage.dart';
import 'filepick.dart';
import 'gridview.dart';
import 'package:flutter/material.dart';

import 'dart:math';
void main() {
  runApp(MaterialApp(
    //theme: ThemeData(),
    home: text(),));
}
class viddd extends StatefulWidget {
  const viddd({Key? key}) : super(key: key);

  @override
  State<viddd> createState() => _vidddState();
}

class _vidddState extends State<viddd> {

  final FlickManager filckmanager=FlickManager(videoPlayerController: VideoPlayerController.network('https://www.youtube.com/watch?v=_FgoHstyluk'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: AspectRatio(aspectRatio: 16/9,
     child: FlickVideoPlayer(flickManager: filckmanager),
     ),
    );
  }
}





