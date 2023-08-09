import 'package:flutter/material.dart';
import 'package:inpractice/viedoclass.dart';
import 'package:video_player/video_player.dart';

class viedo extends StatefulWidget {
  const viedo({Key? key}) : super(key: key);

  @override
  State<viedo> createState() => _viedoState();
}

class _viedoState extends State<viedo> {
  late VideoPlayerController controller;
  int currentindex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    playviedo(init: true);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [

          Container(

            height: 400,
            color: Colors.grey,
            child: controller.value.isInitialized?Column(
              children: [
                SizedBox(
                  height: 200,
                  child: VideoPlayer(controller),
                )
              ],
            ):CircularProgressIndicator(color: Colors.white,),


          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              ValueListenableBuilder(valueListenable: controller, builder: (context, value, child) {
                return Text("hello");
              },),
              Expanded(
                child: SizedBox(
                  height: 20,
                  child: VideoProgressIndicator(controller, allowScrubbing: true,
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 12),),
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: viedooo.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.asset(
                          viedooo[index].thumbnail, fit: BoxFit.fill),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(

                      child: Text("${viedooo[index].name}"),
                    )
                  ],

                );
              },),
          )
        ],
      ),
    );
  }

  void playviedo({int index = 0, bool init = false}) {
    if (index < 0 || index >= viedooo.length) return;
    controller = VideoPlayerController.network(viedooo[currentindex].url)
      ..addListener(() =>setState(() {  })
        )..setLooping(true)..initialize().then((value) => controller.play);
  }
}
