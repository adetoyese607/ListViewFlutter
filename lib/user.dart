import 'package:flutter/material.dart';

// class User {
//   final String name;
//   final String image;
//   final String profession;

  // User(this.name, this.image, this.profession);
//   User(this.name, this.profession, this.image);
// }

// List users = [
//   User('Ade', 'Web Dev', 'images/laptop.jpg'),
//   User('Sam', 'App Dev', 'images/laptop.jpg'),
//   User('Joy', 'Photographer', 'images/laptop.jpg'),
//   User('Pece', 'Engr', 'images/laptop.jpg'),
//   User('Hope', 'Tailor', 'images/laptop.jpg'),
//   User('Favour', 'Constructor', 'images/laptop.jpg'),
//   User('Blessing', 'Fire Fighter', 'images/.jpg'),
//   User('Evelyn', 'Footballer', 'images/laptop.jpg'),
//   User('Grace', 'MAnager', 'images/laptop.jpg'),
//   User('Ola', 'Data Anayst', 'images/laptop.jpg'),
//   User('Shams', 'Driver', 'images/laptop.jpg'),
//   User('Bash', 'Nurse', 'images/laptop.jpg'),
//   User('Austin', 'Painter', 'images/laptop.jpg')
// ];

final List<Color> colors = [
  Colors.teal,
  Colors.red,
  Colors.white,
  Colors.blueGrey,
  Colors.cyan,
  Colors.deepPurple,
  Colors.orange,
  Colors.yellow,
  Colors.indigo,
  Colors.pink,
];
const containerHeight = 300.0;
final ScrollController scrollController = ScrollController();

void scrollToTap(int index) {
  scrollController.animateTo(index*containerHeight, duration:const Duration(milliseconds: 500), curve: Curves.easeIn);
}
