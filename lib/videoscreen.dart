

/// An example of using the plugin, controlling lifecycle and playback of the
/// video.

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class VideoScreen extends StatefulWidget {
  final String url;
  VideoScreen({Key? key,required this.url}) :super(key: key);

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late VideoPlayerController _controller;
  late Future<void> _initiallizeVideoPlayerFuture;
  @override
  void initState(){
    // _controller = VideoPlayerController.network(
    //     'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4');
    _controller = VideoPlayerController.asset(widget.url);
    _initiallizeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
  }
  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('Video demo'),
      ),
      body: FutureBuilder(
        future: _initiallizeVideoPlayerFuture,
        builder: (context,snapShot){
          if(snapShot.connectionState==ConnectionState.done){
            return AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller)
            );
          }
          else {
            return Center(
              child: CircularProgressIndicator(),
            );
         }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            if(_controller.value.isPlaying){
              _controller.pause();
            } else {
              _controller.play();
            }
          });
        },
        child: Icon(_controller.value.isPlaying? Icons.pause: Icons.play_arrow),
      ),
    );
  }
}