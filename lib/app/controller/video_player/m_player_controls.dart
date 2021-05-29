import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MPlayerControls extends StatelessWidget {
  const MPlayerControls({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        color: Colors.black26,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                PlayerButton(
                  size: 50,
                  iconPath: 'assests/icons/rewind.png',
                ),
                SizedBox(width: 20),
                PlayerButton(
                  size: 60,
                  iconPath: 'assests/icons/play.png',
                ),
                SizedBox(width: 20),
                PlayerButton(
                  size: 50,
                  iconPath: 'assests/icons/fast-forward.png',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PlayerButton extends StatelessWidget {
  final double size;
  final String iconPath;

  const PlayerButton({
    Key key,
    @required this.size,
    @required this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: size,
        width: size,
        padding: EdgeInsets.all(this.size * 0.20),
        decoration: BoxDecoration(
          color: Colors.white54,
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          iconPath,
        ),
      ),
    );
  }
}
