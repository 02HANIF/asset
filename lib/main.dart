import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SwipeGifScreen(),
    );
  }
}

class SwipeGifScreen extends StatelessWidget {
  // Daftar path untuk GIF
  final List<String> gifPaths = [
    'images/gif1.gif',
    'images/gif2.gif',
    'images/gif3.gif',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Swipe GIF'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Image.asset(
              gifPaths[index],
              fit: BoxFit.contain,
            ),
          );
        },
        itemCount: gifPaths.length,
        pagination: SwiperPagination(), 
        control: SwiperControl(),      
        autoplay: false,               
      ),
    );
  }
}
