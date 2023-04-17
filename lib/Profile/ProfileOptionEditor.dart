import 'package:cod_assistant/Profile/ProfileOption.dart';
import 'package:flutter/material.dart';

class ProfileOptionEditor extends StatelessWidget {
  final ProfileOption option;
  late final TextEditingController myController;
  ProfileOptionEditor({super.key, required this.option}) {
    myController = TextEditingController(text: option.getValue());
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: myController,
      textAlign: TextAlign.start,
      style: const TextStyle(fontSize: 20),
      textAlignVertical: TextAlignVertical.bottom,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: '',
      ),
    );
  }
}
