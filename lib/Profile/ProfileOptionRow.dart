import 'package:cod_assistant/Profile/ProfileOption.dart';
import 'package:cod_assistant/Profile/ProfileOptionDisplay.dart';
import 'package:cod_assistant/Profile/ProfileOptionEditor.dart';
import 'package:cod_assistant/main.dart';
import 'package:flutter/material.dart';

class ProfileOptionRow extends StatefulWidget {
  final String? displayName;
  final ProfileOption option;
  late final ProfileOptionEditor editor;
  late final ProfileOptionDisplay display;

  ProfileOptionRow({super.key, required this.option, this.displayName}) {
    editor = ProfileOptionEditor(option: option);
    display = ProfileOptionDisplay(option: option);
  }

  @override
  State<ProfileOptionRow> createState() => _ProfileOptionRowState();
}

class _ProfileOptionRowState extends State<ProfileOptionRow> {
  bool editMode = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 0.08,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            height: double.infinity,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
            child: Text(
              '${(widget.displayName ?? widget.option.title.capitalize())}:',
              style: const TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          ),
          Expanded(
            child: editMode ? widget.editor : widget.display,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          ),
          FittedBox(
            fit: BoxFit.fitHeight,
            child: IconButton(
              onPressed: () {
                if (editMode) {
                  widget.option.setValue(widget.editor.myController.text);
                }
                setState(() {
                  editMode = !editMode;
                });
              },
              icon: Icon(
                editMode ? Icons.save : Icons.edit,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
