import 'package:flutter/material.dart';

class DoneButton extends StatefulWidget {
  const DoneButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DoneButtonState createState() => _DoneButtonState();
}

class _DoneButtonState extends State<DoneButton> {
  bool isDone = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isDone ? Icons.remove_red_eye : Icons.remove_red_eye_outlined,
        color: Colors.black,
      ),
      onPressed: () {
        setState(() {
          isDone = !isDone;
        });
      },
    );
  }
}
