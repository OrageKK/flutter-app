class Post {
  const Post({
    required this.title,
    required this.author,
    required this.imageUrl,
  });

  final String title;
  final String author;
  final String imageUrl;
}

final List<Post> posts = [
  Post(
      title: "Cry",
      author: "Candy",
      imageUrl: "https://image.photocnc.com/aoaodcom/2022-09/29/20220929094537482c15f310c261f6730f19e228d1a7f9.jpg"),
  Post(
      title: "Lades",
      author: "Soio",
      imageUrl: "https://image.photocnc.com/aoaodcom/2022-09/26/20220926102108ea0ef01d7489c626d14291d76c906ffa.jpg"),
  Post(
      title: "Okss",
      author: "Soul Partner",
      imageUrl: "https://image.photocnc.com/aoaodcom/2022-09/26/20220926102107495415b3509347ad804da33b89474e59.png"),
  Post(
      title: "Apple",
      author: "John",
      imageUrl: "https://image.photocnc.com/aoaodcom/2022-09/26/202209261021146f66d82e0109fd161940c5635f18a66b.png"),
  Post(
      title: "Smile",
      author: "Emo.?",
      imageUrl: "https://image.photocnc.com/aoaodcom/2022-09/26/2022092610210360ba8f844beade4be571ae6688ebeada.jpg.h700.webp")
];
