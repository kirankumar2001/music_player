import 'package:flutter/material.dart';
import 'package:music_player/const.dart';

class MyPlaylist extends StatefulWidget {
  const MyPlaylist({super.key});

  @override
  State<MyPlaylist> createState() => _MyPlaylistState();
}

class _MyPlaylistState extends State<MyPlaylist> {
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
      appBar: PreferredSize(
          child: AppBar(
            elevation: 0,
            centerTitle: true,
            title: Text(
              "Playlists",
              style: TextStyle(
                  fontSize: 32, fontWeight: FontWeight.bold, color: textcolor),
            ),
            bottom: PreferredSize(
                child: SizedBox(
                  height: 60,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 36, 31, 33),
                        suffixIcon: Icon(
                          Icons.search,
                          color: textcolor,
                          size: 22,
                        ),
                        hintText: "Search...",
                        hintStyle: TextStyle(color: textcolor),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 2,
                              color: Colors.red,
                            ),
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
                preferredSize: Size.fromHeight(100)),
            backgroundColor: Colors.black,
          ),
          preferredSize: Size.fromHeight(130)),
      body: Container(
        color: Colors.black,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
          ),
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Image.network(
                      images[index],
                      fit: BoxFit.fill,
                    )),
              ),
            );
          },
        ),
      ),
    );
  }
}
