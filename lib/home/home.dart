import 'package:flutter/material.dart';
import 'package:videoplayer/constant/colors.dart';

import '../tabs/offline_video.dart';
import '../tabs/online_video.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("UNT Player"),
            backgroundColor: Color(CustomColors.background),
            bottom: const TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(text: "offlineVideo"),
                Tab(text: "onlineVideo"),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              OfflineVideo(),
              OnlineVideo(),
            ],
          ),
        ),
      ),
    );
  }
}
