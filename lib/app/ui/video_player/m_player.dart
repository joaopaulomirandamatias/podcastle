import 'package:flutter/material.dart';

class MPlayer extends StatelessWidget {
  const MPlayer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Container(
        color: Colors.black,
      ),
    );
  }
}
