import 'package:flutter/material.dart';

class ReusableElevatedButton extends StatelessWidget {
  const ReusableElevatedButton({
    super.key,
    required this.size,
    required this.label,
    required this.onPressed,
  });

  final Size size;
  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primary,
        fixedSize: Size(size.width, size.width * 0.13),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
      ),
    );
  }
}
