import 'package:flutter/material.dart';
import 'package:journal_app/app/theme/theme.dart';

class SelectableButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final OutlinedButtonThemeData? mainTheme;
  final EdgeInsets? labelPadding;
  const SelectableButton({
    required this.onPressed,
    required this.label,
    this.mainTheme,
    this.labelPadding,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: InkWell(
        child: Ink(
          child: Theme(
            data: Theme.of(context).copyWith(outlinedButtonTheme: mainTheme ?? mainButtonTheme),
            child: OutlinedButton(
              onPressed: onPressed,
              child: Padding(
                padding: labelPadding ?? const EdgeInsets.symmetric(vertical: 12.0),
                child: Text(label),
              ),
            ),
          ),
        ),
      ),
    );
  }
}