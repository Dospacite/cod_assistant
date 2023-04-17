import 'package:flutter/cupertino.dart';

class VerticalText extends StatelessWidget {
  final String text;
  const VerticalText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      direction: Axis.vertical,
      spacing: 25,
      children: text
          .split("")
          .map(
            (e) => Text(
              e,
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          )
          .toList(),
    );
  }
}
