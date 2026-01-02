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
        ],
      ),
    );
  }
}
