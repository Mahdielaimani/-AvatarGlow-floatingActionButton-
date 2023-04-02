import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'Avatar Glow'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _animate = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: AvatarGlow(
        showTwoGlows: true,
        curve: Curves.fastOutSlowIn,
        startDelay: Duration(milliseconds: 200),
        glowColor: Colors.red,
        endRadius: 90.0,
        duration: Duration(milliseconds: 2000),
        repeat: true,
        animate: true,
        shape: BoxShape.circle,
        repeatPauseDuration: Duration(milliseconds: 20),
        child: Material(
          // Replace this child with your own
          elevation: 8.0,
          shape: CircleBorder(),
          color: Colors.transparent,
          child: CircleAvatar(
            backgroundColor: Colors.grey[100],
            child: FloatingActionButton(onPressed: () {
              setState() {
                _animate = _animate;
              }
            }),
          ),
        ),
      ),
    );
  }
}
