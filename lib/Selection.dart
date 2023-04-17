import 'package:flutter/material.dart';

class Selection extends StatelessWidget {
  final double top;
  final double left;
  final double height;
  final double width;
  final Widget destination;
  final Color backgroundColor;
  final Color? iconColor;

  const Selection(
      {required this.top,
      required this.left,
      required this.height,
      required this.width,
      required this.destination,
      this.backgroundColor = Colors.white70,
      this.iconColor,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: SizedBox(
        height: height,
        width: width,
        child: Material(
          borderOnForeground: true,
          shape: const StadiumBorder(),
          color: backgroundColor,
          child: InkResponse(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => destination,
                    ),
                  ), // Navigator.push
              child: iconColor != null
                  ? Icon(Icons.ads_click, color: iconColor)
                  : null),
        ),
      ),
    );
  }
}
