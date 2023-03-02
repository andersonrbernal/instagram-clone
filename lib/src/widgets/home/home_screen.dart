import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> profileImages = [
    'assets/images/foto.jpg',
    'assets/images/foto.jpg',
    'assets/images/foto.jpg',
    'assets/images/foto.jpg',
    'assets/images/foto.jpg',
    'assets/images/foto.jpg',
    'assets/images/foto.jpg',
    'assets/images/foto.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
              Image.asset('assets/images/instagram-full-logo.png', width: 130),
          actions: [
            IconButton(
                icon: const Icon(Icons.add_circle_outline), onPressed: () {}),
            IconButton(
                icon: const Icon(Icons.favorite_border), onPressed: () {}),
            IconButton(
                icon: const Icon(Icons.chat_bubble_outline), onPressed: () {}),
          ],
          elevation: 1,
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            // STORY
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(profileImages.length, (index) {
                return Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      CircleAvatar(
                          radius: 30,
                          backgroundImage: const AssetImage(
                              'assets/images/instagram-background-gradiant.jpg'),
                          child: CircleAvatar(
                              radius: 28,
                              backgroundImage:
                                  AssetImage(profileImages[index]))),
                      const SizedBox(height: 7),
                      const Text('Anderson',
                          style: TextStyle(fontSize: 12, color: Colors.black87))
                    ],
                  ),
                );
              })),
            )
          ],
        )));
  }
}
