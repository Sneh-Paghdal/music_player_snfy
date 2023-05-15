import 'package:asanfy/widgets/section_header.dart';
import 'package:asanfy/widgets/song_card.dart';
import 'package:flutter/material.dart';

import '../models/song_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Song> songs = Song.songs;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.deepPurple.shade800.withOpacity(0.8),
            Colors.deepPurple.shade200.withOpacity(0.8),
          ]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const _CustomAppBar(),
        bottomNavigationBar: const _CustomNavBar(),
        body: SingleChildScrollView(
            child: Column(
              children: [
                _DiscoverMusic(),
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20,bottom: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: SectionHeader(title: 'Trending Music'),
                      ),
                      const SizedBox(height: 20,),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.27,
                        child: ListView.builder(
                          itemCount: songs.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context,index){
                            return SongCard(songs: songs[index]);
                        }),
                      )
                    ],
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}

class _DiscoverMusic extends StatelessWidget {
  const _DiscoverMusic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 5,),
          Text("Enjoy your favorite music",
            style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5,),
          TextFormField(
            decoration: InputDecoration(
                isDense: true,
                filled: true,
                fillColor: Colors.white,
                hintText: "Search",
                hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey.shade400),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide.none,
                )
            ),
          ),
        ],
      ),
    );
  }
}


class _CustomNavBar extends StatelessWidget {
  const _CustomNavBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.deepPurple.shade800,
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items:  const [
        BottomNavigationBarItem(icon: Icon(Icons.home) , label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_outline) , label: "Favorites"),
        BottomNavigationBarItem(icon: Icon(Icons.play_circle_outline) , label: "Play"),
        BottomNavigationBarItem(icon: Icon(Icons.people_outline) , label: "Profile"),
      ],
    );
  }
}


class _CustomAppBar extends StatelessWidget with PreferredSizeWidget{
  const _CustomAppBar({Key ? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: const Icon(Icons.grid_view_rounded),
      actions: [
        Container(
          margin: EdgeInsets.only(right: 20),
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
              "https://st3.depositphotos.com/30226412/32944/v/450/depositphotos_329445992-stock-illustration-initial-letter-sp-or-ps.jpg"
            ),
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(58.0);
  
}





