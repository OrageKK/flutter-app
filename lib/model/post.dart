class Post {
  const Post({
    this.title,
    this.author,
    this.imageUrl,
  });

  final String title;
  final String author;
  final String imageUrl;
}

final List<Post> posts = [
  Post(
    title: "Cry",
    author: "Candy",
    imageUrl: "https://t1.hxzdhn.com/uploads/tu/202011/9999/f8bf76bd21.jpg"
  ),
  Post(
      title: "Lades",
      author: "Soio",
      imageUrl: "https://t1.hxzdhn.com/uploads/tu/202011/9999/c8c4a9065f.jpg"
  ),
  Post(
      title: "Okss",
      author: "Qie",
      imageUrl: "https://t1.hxzdhn.com/uploads/tu/202011/9999/8fe3e3146d.jpg"
  ),
  Post(
      title: "Apple",
      author: "John",
      imageUrl: "https://t1.hxzdhn.com/uploads/tu/202011/9999/c3d347b2f8.jpg"
  ),
  Post(
      title: "Smile",
      author: "Ork",
      imageUrl: "https://t1.hxzdhn.com/uploads/tu/202011/9999/6768b52170.jpg"
  )
];