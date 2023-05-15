class Song{
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song({
    required this.title,
    required this.description,
    required this.url,
    required this.coverUrl,
  });

  static List<Song> songs = [
    Song(
      title: 'Glass',
      description: 'Glass',
      url: "assets/music/glass.mp3",
      coverUrl: "assets/images/glass_cover.jpg",
    ),Song(
      title: 'Banado',
      description: 'Bhanado',
      url: "assets/music/bannado.mp3",
      coverUrl: "assets/images/glass_cover.jpg",
    ),Song(
      title: 'Afree',
      description: 'Afree',
      url: "assets/music/afree.mp3",
      coverUrl: "assets/images/glass_cover.jpg",
    ),Song(
      title: 'Mokingbird',
      description: 'Mokingbird',
      url: "assets/music/mockingbird.mp3",
      coverUrl: "assets/images/glass_cover.jpg",
    ),
  ];
}