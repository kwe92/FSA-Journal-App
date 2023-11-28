import 'package:flutter/material.dart';
import 'package:journal_app/app/theme/colors.dart';

class FormContainer extends StatelessWidget {
  final Widget child;
  final double? height;

  const FormContainer({
    required this.child,
    this.height,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Container(
        height: height ?? MediaQuery.of(context).size.height / 1.5,
        width: double.maxFinite,
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        decoration: const BoxDecoration(
          color: AppColors.offWhite,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: child,
        ),
      );
}