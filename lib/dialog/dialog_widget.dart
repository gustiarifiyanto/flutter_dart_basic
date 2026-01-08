import 'package:flutter/material.dart';

class DialogWidget extends StatefulWidget {
  const DialogWidget({super.key});

  @override
  State<DialogWidget> createState() => _DialogWidgetState();
}

class _DialogWidgetState extends State<DialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Confirmation'),
                    content: Text('apakah anda yakin?'),
                    actions: [
                      ElevatedButton(onPressed: () {}, child: Text('cancel')),
                      ElevatedButton(onPressed: () {}, child: Text('ok')),
                    ],
                  );
                },
              );
            },
            child: Text('Dialog'),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return SizedBox(
                    height: 300,
                    child: Center(child: Text('Siapa anda')),
                  );
                },
              );
            },
            child: Text('Bottomsheet'), 
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Apaan nih ?'),
                  backgroundColor: Colors.green,
                ),
              );
            },
            child: Text('Show Snack'),
          ),
        ],
      ),
    );
  }
}
