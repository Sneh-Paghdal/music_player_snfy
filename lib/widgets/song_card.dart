import 'package:flutter/material.dart';

import '../models/song_model.dart';

class SongCard extends StatelessWidget {
  const SongCard({
    Key? key,
    required this.songs,
  }) : super(key: key);

  final Song songs;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: Stack(
        alignment: Alignment.bottomCenter,
          children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: AssetImage(
                    songs.coverUrl,
                  ),
                  fit: BoxFit.cover)),
        ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.37,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white.withOpacity(0.8)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(songs.title,style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),),
                      Text(songs.description,style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),)
                    ],
                  ),
                  const Icon(Icons.play_circle,color: Colors.deepPurple,)
                ],
              ),
            ),

      ]),
    );
  }
}
