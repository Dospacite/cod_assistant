import 'package:flutter/material.dart';

class WelcomeMenuOption extends StatelessWidget {
  final Icon icon;
  final String destination;
  final String text;
  final double fontSize;
  final double indent;
  final double letterSpacing;
  final double spacing;
  final EdgeInsets insets;
  const WelcomeMenuOption(
      {required this.icon,
      required this.destination,
      required this.text,
      this.fontSize = 18,
      this.indent = 0,
      this.letterSpacing = 2,
      this.spacing = 15,
      this.insets = const EdgeInsets.only(
        left: 30,
        right: 30,
        top: 15,
        bottom: 15,
      ),
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () {
        Navigator.pushNamed(context, destination);
      },
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: spacing,
        children: [
          SizedBox(width: indent),
          icon,
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(50),
            ),
            padding: insets,
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: fontSize,
                fontWeight: FontWeight.w700,
                letterSpacing: letterSpacing,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
