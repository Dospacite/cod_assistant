import 'package:cod_assistant/Profile/ProfileOption.dart';
import 'package:flutter/material.dart';

class ProfileOptionDisplay extends StatelessWidget {
  final ProfileOption option;

  const ProfileOptionDisplay({
    required this.option,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Text(
        option.getValue(),
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
