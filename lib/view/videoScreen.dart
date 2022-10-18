import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videoplayer/provider/homeProvider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  @override
  Widget build(BuildContext context) {
    YoutubePlayerController? youtubePlayerController = YoutubePlayerController(
      initialVideoId:
          '${Provider.of<HomeProvider>(context, listen: false).modelClass!.key}',
      flags: const YoutubePlayerFlags(
        autoPlay: true,
      ),
    );

    HomeProvider hpFalse = Provider.of<HomeProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 20,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_sharp,
                color: Colors.black,
              )),
          title: Text("${hpFalse.modelClass!.name}",
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.black)),
          centerTitle: true,
          backgroundColor: Colors.white70,
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 15),
          children: [
            SizedBox(
              height: 300,
              child: YoutubePlayer(
                progressIndicatorColor: Colors.redAccent,
                controller: youtubePlayerController,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: Text("${hpFalse.modelClass!.name}",
                  style: const TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
