import 'package:flutter/material.dart';
import 'package:music_player/const.dart';
import 'package:music_player/home.dart';
import 'package:music_player/more.dart';
import 'package:music_player/playlist.dart';
import 'package:music_player/search.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var screens = [Home(), Search(), MyPlaylist(), More()];
  var selectedIndex = 0;
  var images = [
    "https://m.media-amazon.com/images/I/51UDpiGLRPS._UXNaN_FMjpg_QL85_.jpg",
    "https://scontent.fcok6-1.fna.fbcdn.net/v/t39.30808-6/305488309_486726666796453_6972977668012992674_n.jpg?stp=dst-jpg_s851x315&_nc_cat=107&ccb=1-7&_nc_sid=da31f3&_nc_ohc=yu99hQfTGiUAX86100d&_nc_ht=scontent.fcok6-1.fna&oh=00_AfDzMsAZ8ZmdhJ5NRd7975qgLgFO5-tFEtETtPERnJes_Q&oe=648142EA",
    "https://podcastle.ai/blog/content/images/2022/01/Podcast-Music-1.png",
    "https://i.scdn.co/image/ab67616d0000b27370bae86d2779d5fd1d410cc5",
    "https://i.ytimg.com/an/sKmzb4ICz5A/7223600490774426405_mq.jpg?v=60b9aa77",
    "https://m.media-amazon.com/images/I/51UDpiGLRPS._UXNaN_FMjpg_QL85_.jpg",
    "https://scontent.fcok6-1.fna.fbcdn.net/v/t39.30808-6/305488309_486726666796453_6972977668012992674_n.jpg?stp=dst-jpg_s851x315&_nc_cat=107&ccb=1-7&_nc_sid=da31f3&_nc_ohc=yu99hQfTGiUAX86100d&_nc_ht=scontent.fcok6-1.fna&oh=00_AfDzMsAZ8ZmdhJ5NRd7975qgLgFO5-tFEtETtPERnJes_Q&oe=648142EA",
    "https://podcastle.ai/blog/content/images/2022/01/Podcast-Music-1.png",
    "https://i.scdn.co/image/ab67616d0000b27370bae86d2779d5fd1d410cc5",
    "https://i.ytimg.com/an/sKmzb4ICz5A/7223600490774426405_mq.jpg?v=60b9aa77",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: screens[selectedIndex]),
      bottomNavigationBar: SlidingClippedNavBar.colorful(
        backgroundColor: Colors.black,
        onButtonPressed: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        iconSize: 25,
        selectedIndex: selectedIndex,
        barItems: [
          BarItem(
            icon: Icons.home,
            title: 'Home',
            activeColor: textcolor,
            inactiveColor: Colors.white,
          ),
          BarItem(
            icon: Icons.search_rounded,
            title: 'Search',
            activeColor: textcolor,
            inactiveColor: Colors.white,
          ),
          BarItem(
            icon: Icons.dynamic_feed,
            title: 'Playlist',
            activeColor: textcolor,
            inactiveColor: Colors.white,
          ),
          BarItem(
            icon: Icons.more_horiz,
            title: 'More',
            activeColor: textcolor,
            inactiveColor: Colors.white,
          ),

          /// Add more BarItem if you want
        ],
      ),
    );
  }
}
