class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Learn JavaScript With Us',
      image:'assets/images/logo1.png',
      discription: "We are committed to making your learning experience as easy and enjoyable as possible."
  ),
  UnbordingContent(
      title: 'Effortless learning',
      image: 'assets/images/logo2.png',
      discription: "Make your learning experience easier with interactive courses and exercises"
  ),
  UnbordingContent(
      title: 'No time for classes?',
      image: 'assets/images/logo3.png',
      discription: "Make your learning experience easier with interactive courses and exercises"
  ),
];