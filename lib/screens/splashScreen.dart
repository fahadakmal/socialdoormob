import 'package:flutter/material.dart';
import 'package:socialdoormob/screens/onBoarding1.dart';
import 'package:socialdoormob/screens/signInScreen/signInScreem.dart';
import 'package:socialdoormob/size_config.dart';
import 'package:socialdoormob/styling.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:socialdoormob/images.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  VideoPlayerController _controller;
  VideoPlayerController _videoPlayerController;
  bool startedPlaying = false;

  @override
  void initState() {

    super.initState();

    _videoPlayerController =
        VideoPlayerController.asset(Videos.splashVideo);
    started();
    // _videoPlayerController.addListener(() {
    //   if (startedPlaying && !_videoPlayerController.value.isPlaying) {
    //     // Navigator.pop(contex);
    //   }
    // });
    Timer(Duration(seconds: 7),
            () => Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()))
      // () => Navigator.of(context).pushReplacementNamed( DeliveryInfo.routeName )

    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  // Future<bool> started() async {
  //   await _videoPlayerController.initialize();
  //   await _videoPlayerController.play();
  //   startedPlaying = true;
  //   return true;
  // }
  Future<void> started() async {
    await _videoPlayerController.initialize();
    await _videoPlayerController.play();
    startedPlaying = true;
    // return true;
  }

  @override
  Widget build(BuildContext context) {
    // return FutureBuilder<bool>(
    //   future: started(),
    //   builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
    //     if (snapshot.data == true) {
    //       return Container(
    //         height: SizeConfig.heightMultiplier,
    //         width: SizeConfig.widthMultiplier,
    //         child: VideoPlayer(_videoPlayerController),
    //       );
    //     } else {
    //       return const Text('waiting for video to load');
    //     }
    //   },
    // );
    return Container(
      height: SizeConfig.heightMultiplier,
      width: SizeConfig.widthMultiplier,
      child: VideoPlayer(_videoPlayerController),
    );
  }
}
