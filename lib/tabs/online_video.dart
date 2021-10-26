import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:videoplayer/constant/videos.dart';
import 'package:videoplayer/helper/chewie_list_item.dart';


class OnlineVideo extends StatefulWidget {
  const OnlineVideo({Key? key}) : super(key: key);



  @override
  _VideoItemState createState() => _VideoItemState();
}

class _VideoItemState extends State<OnlineVideo > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(children: [
            const Padding(
              padding: EdgeInsets.only(top: 60),
              child: Text("Online Video Player", style:
              TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
            ),
            const SizedBox(height: 130,),
            SizedBox(height: 200,width: MediaQuery.of(context).size.width,
              child: ChewieListItem(
                  videoPlayerController: VideoPlayerController.network(Videos.onlineVideoURL),
                  looping: false),
            ),
          ],
          )
      ),
    );
  }
}

























