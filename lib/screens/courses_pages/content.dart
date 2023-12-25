class CourseContent {
  String text;
  String upperDiscription;
  String image;
  String lowerDiscription;

  CourseContent({ required this.text, required this.upperDiscription, required this.image, required this.lowerDiscription});
}

List<CourseContent> contents = [
  CourseContent(
      text:  "Basics of Android Studio",
      upperDiscription: 'Android Studio is the official integrated development environment (IDE) for Android app development, '
                          'built and distributed by Google. An IDE contains tools that enable software developers to design',
      image:'assets/images/courses_1.png',
      lowerDiscription: "Android Studio is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
                          "industry's standard dummy text ever since the 1500s",

  ),
 CourseContent(
      text:  "Basics of Android Studio",
      upperDiscription: 'Android Studio is the official integrated development environment (IDE) for Android app development, '
                          'built and distributed by Google.',
      image: 'assets/images/courses_2.png',
      lowerDiscription: "Based on the powerful code editor and developer tools from IntelliJ IDEA , "
                      "Android Studio offers even more features that enhance your productivity when building Android apps, "
                      "such as,"

  ),
  CourseContent(
      text:  "Basics of Android Studio",
      upperDiscription: 'Android Studio is an Integrated Development Environment (IDE) for Android app development. It provides a range of features.',
      image: 'assets/images/courses_3.png',
      lowerDiscription: "Make your learning experience easier with interactive courses and exercises"
  ),
];