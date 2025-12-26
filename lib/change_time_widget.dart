import 'package:flutter/material.dart';

class ChangeTimeWidget extends StatefulWidget {
  const ChangeTimeWidget({super.key});

  @override
  State<ChangeTimeWidget> createState() => _ChangeTimeWidgetState();
}

class _ChangeTimeWidgetState extends State<ChangeTimeWidget> {
  DateTime time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Waktu saat ini : ${time.hour} : ${time.minute} : ${time.second}',
          style: TextStyle(
            fontFamily: 'Arial',
            fontSize: 20,
            color: Colors.green[700],
            decoration: TextDecoration.underline,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() => time = DateTime.now());
          },
          child: Text(
            'Ubah Waktu',
            style: TextStyle(
              fontSize: 20,
              color: const Color.fromARGB(255, 58, 107, 148),
            ),
          ),
        ),
      ],
    );
  }
}
