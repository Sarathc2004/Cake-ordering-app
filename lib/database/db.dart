import 'package:flutter/material.dart';

class Database {
  static List<Map> splashlist = [
    {
      "image": "assets/images/splashcake1.webp",
      "title": "Easy Ordering, Swift Delivery",
      "firstline": "Order with ease and enjoy swift delivery to",
      "secondline": " satisfy your cake cravings."
    },
    {
      "image": "assets/images/splashcake2.webp",
      "title": "Garden of Dessert Delights",
      "firstline": "Tiny treats, big delights – experience sweet ",
      "secondline": "miniatures for every craving"
    },
    {
      "image": "assets/images/splashcake3.webp",
      "title": "Sweet Celebrations Begin Here",
      "firstline": "Enter a world where each cake is a crafted celebration",
      "secondline": "sweetening your moments with indulgence and joy"
    }
    // "assets/images/splashcake1.webp",
    // "assets/images/splashcake2.webp",
    // "assets/images/splashcake3.webp"
  ];
  static List imagelist = [
    "assets/images/splashcake1.webp",
    "assets/images/splashcake2.webp",
    "assets/images/splashcake3.webp",
    "assets/images/splashcake1.webp",
    "assets/images/splashcake2.webp",
    "assets/images/splashcake3.webp",
    "assets/images/splashcake1.webp",
    "assets/images/splashcake2.webp",
    "assets/images/splashcake3.webp",
    "assets/images/cake.jpeg"
  ];
  static List<Map> profilelist = [
    {"buttonname": "Order history", "icon": Icons.history},
    {"buttonname": "Notifications", "icon": Icons.notifications},
    {"buttonname": "Settings", "icon": Icons.settings},
    {"buttonname": "Help", "icon": Icons.help_outline},
    {"buttonname": "Logout", "icon": Icons.logout},
  ];
  static List<Map> dessertaddlist = [
    {"image": "assets/images/cakephoto.jpg", "name": "Cakes"},
    {"image": "assets/images/donutphoto.jpg", "name": "Donuts"},
    {"image": "assets/images/cupcakesphoto.jpg", "name": "Cup cakes"},
    {"image": "assets/images/cookiesphoto.jpg", "name": "Cookies"}
  ];
}
