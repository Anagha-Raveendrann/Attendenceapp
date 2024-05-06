import 'package:flutter/material.dart';


class ChoiceChipWidget extends StatefulWidget {
  @override
  _ChoiceChipWidgetState createState() => _ChoiceChipWidgetState();
}

class _ChoiceChipWidgetState extends State<ChoiceChipWidget> {
  List<String> selectedChoices = [];

  void handleChipSelected(String choice) {
    setState(() {
      if (selectedChoices.contains(choice)) {
        selectedChoices.remove(choice);
      } else {
        selectedChoices.add(choice);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 4.0,
      children: List<Widget>.generate(
        5, // Number of choice chips
        (int index) {
          return ChoiceChip(
            label: Text('Choice ${index + 1}'),
            selected: selectedChoices.contains('Choice ${index + 1}'),
            onSelected: (bool selected) {
              handleChipSelected('Choice ${index + 1}');
            },
          );
        },
      ).toList(),
    );
  }
}