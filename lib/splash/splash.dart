import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:videoplayer/constant/images.dart';
import 'package:videoplayer/home/home.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Widget splashScreenView = SplashScreenView(
      navigateRoute: const HomeScreen(),
      duration: 5000,
      imageSize: 200,
      imageSrc: Images.splashImage,
      backgroundColor: Colors.white,
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
                color: Colors.transparent,
                child: splashScreenView
            ),
          ),
          const Text(
            "Powered by",
            style: TextStyle(fontSize: 12.0,),
          ),
          const Text(
            "ultroNeous",
            style: TextStyle(fontSize: 24.0,),
          ),
          const SizedBox(height: 100,)
        ],
      ),

    );

  }
}
