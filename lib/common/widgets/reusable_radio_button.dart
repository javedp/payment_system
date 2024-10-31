import 'package:flutter/material.dart';

class ReusableRadioButton extends StatelessWidget {
  const ReusableRadioButton({
    super.key,
    required this.value,
    required this.groupValue,
    required this.label,
    required this.onChanged,
  });

  final int value;
  final int? groupValue;
  final Function(int?)? onChanged;
  final String label;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Radio.adaptive(
        value: value,
        groupValue: groupValue,
        activeColor: Theme.of(context).colorScheme.primary,
        onChanged: onChanged,
      ),
      title: Text(label),
    );
  }
}
