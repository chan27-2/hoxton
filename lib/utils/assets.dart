import 'dart:math';

class MyAssets {
  static const notificationIcon = "assets/bell.svg";
  static const user = "assets/user.png";
  static const check = "assets/check.png";
  static const progress = "assets/progress.png";
  static const back = "assets/back.svg";
  static const card1 = "assets/card1.png";
  static const card2 = "assets/card2.png";

  static String getRandomSampleUser() {
    const path = "assets/sample_pics/";
    final _random = new Random();
    const sampleUsers = ["1.png", "2.png", "3.png", "4.png"];
    return path + sampleUsers[_random.nextInt(sampleUsers.length)];
  }

  static String getSampleUserBasedOnIndex(int index) {
    const path = "assets/sample_pics/";
    const sampleUsers = ["1.png", "2.png", "3.png", "4.png"];
    return path + sampleUsers[index % 4];
  }
}
