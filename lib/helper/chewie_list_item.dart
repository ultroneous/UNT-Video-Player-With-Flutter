import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

class ChewieListItem extends StatefulWidget {
  final VideoPlayerController videoPlayerController;
  final bool looping;
  const ChewieListItem({
    Key? key, required this.videoPlayerController, required this.looping}) : super(key: key);

  @override
  _ChewieListItemState createState() => _ChewieListItemState();
}

class _ChewieListItemState extends State<ChewieListItem> {
  ChewieController? _chewieController;
  @override
  void initState(){
    super.initState();
    _chewieController = ChewieController(
        videoPlayerController: widget.videoPlayerController,
      aspectRatio: 16/8,
      autoInitialize: true,
      looping: widget.looping,
      errorBuilder: (context, errorMessage) {
          return Center(
            child: Text(
              errorMessage,
              style: const TextStyle(color: Colors.white),
            ),
          );
      },
    );
  }

 @override
 void dispose() {
    super.dispose();
    widget.videoPlayerController.dispose();
    _chewieController!.dispose();
 }
@override
  Widget build(BuildContext context) {
  return Padding(
      padding: const EdgeInsets.all(8.0),
  child: Chewie(
  controller: _chewieController!,
  ),
  );
  }
}
