import 'package:flutter/material.dart';

class ImagesWidget extends StatefulWidget {
  const ImagesWidget({super.key});

  @override
  State<ImagesWidget> createState() => _ImagesWidgetState();
}

class _ImagesWidgetState extends State<ImagesWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Belajar Mandiri Icon'),
        elevation: 2,
        actions: [Icon(Icons.home_filled), SizedBox(width: 10)],
      ),
      body: Center(
        child: CircleAvatar(
          radius: 100,
          backgroundImage: NetworkImage(
            'https://avatars.githubusercontent.com/u/9919?s=200&v=4',
          ),
        ),
      ),
    );
  }
}
