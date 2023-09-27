import 'package:flutter/material.dart';

import 'Symptom.dart';

class SeveritySelection extends StatefulWidget {
  final Symptom symptom;
  const SeveritySelection({required this.symptom, Key? key}) : super(key: key);

  @override
  State<SeveritySelection> createState() => _SeveritySelectionState();
}

class _SeveritySelectionState extends State<SeveritySelection> {
  double _currentSeverity = 0;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        activeTrackColor: Colors.red[700],
        inactiveTrackColor: Colors.red[100],
        trackShape: const RoundedRectSliderTrackShape(),
        trackHeight: 4.0,
        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12.0),
        thumbColor: Colors.redAccent,
        overlayColor: Colors.red.withAlpha(32),
        overlayShape: const RoundSliderOverlayShape(overlayRadius: 28.0),
        tickMarkShape: const RoundSliderTickMarkShape(),
        activeTickMarkColor: Colors.red[700],
        inactiveTickMarkColor: Colors.red[100],
        valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
        valueIndicatorColor: Colors.redAccent,
        valueIndicatorTextStyle: const TextStyle(
          color: Colors.white,
        ),
      ),
      child: Slider(
        value: _currentSeverity,
        min: 0,
        max: 10,
        divisions: 10,
        label: _currentSeverity.round().toString(),
        onChanged: (double value) {
          setState(() {
            _currentSeverity = value;
            widget.symptom.severity = value;
          });
        },
      ),
    );
  }
}
