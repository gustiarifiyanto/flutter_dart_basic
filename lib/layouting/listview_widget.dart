import 'package:flutter/material.dart';

class ListviewWidget extends StatelessWidget {
  const ListviewWidget({super.key});

  final List<String> categories = const [
    'All',
    'popular',
    'new',
    'recommended',
    'featured',
    'trending',
    'exclusive',
    'All',
    'popular',
    'new',
    'recommended',
    'featured',
    'trending',
    'exclusive',
    'All',
    'popular',
    'new',
    'recommended',
    'featured',
    'trending',
    'exclusive',
  ];

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     centerTitle: true,
    //     title: const Text('Belajar ListView Widget'),
    //     elevation: 2,
    //     actions: [Icon(Icons.home_filled), SizedBox(width: 10)],
    //   ),
    //   body: ListView(
    //     padding: EdgeInsets.all(20),
    //     children: List.generate(categories.length, (index) {
    //       return Card(child: ListTile(title: Text(categories[index])));
    //     }),
    //   ),
    // );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Belajar Warped ListView Widget'),
        elevation: 2,
        actions: [Icon(Icons.home_filled), SizedBox(width: 10)],
      ),
      body: Wrap(
        runSpacing: 10,
        spacing: 10,
        children: List.generate(categories.length, (index) {
          return Chip(label: Text(categories[index]));
        }),
      ),
    );
  }
}
