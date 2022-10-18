import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videoplayer/provider/homeProvider.dart';
import 'package:videoplayer/view/videoScreen.dart';

import 'view/homeScreen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<HomeProvider>(
          create: (context) => HomeProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const HomeScreen(),
          'video': (context) => const VideoScreen(),
        },
      ),
    ),
  );
}
