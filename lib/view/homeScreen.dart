import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videoplayer/model/videoModel.dart';
import 'package:videoplayer/provider/homeProvider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? hpTrue;
  HomeProvider? hpFalse;

  @override
  Widget build(BuildContext context) {
    hpFalse = Provider.of<HomeProvider>(context, listen: false);
    hpTrue = Provider.of<HomeProvider>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("YouTube Video Player",
              style: TextStyle(color: Colors.black)),
          centerTitle: true,
          backgroundColor: Colors.white70,
        ),
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: hpTrue!.videoImgList.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                hpTrue!.modelClass = ModelClass(
                  key: hpFalse!.videoImgList[index].key,
                  name: hpFalse!.videoImgList[index].name,
                );
                Navigator.pushNamed(context, 'video');
              },
              child: Container(
                height: 270,
                margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 5),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.network(
                        "${hpFalse!.videoImgList[index].img}",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      "${hpFalse!.videoImgList[index].name}",
                      overflow: TextOverflow.clip,
                      style: const TextStyle(fontSize: 17),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
