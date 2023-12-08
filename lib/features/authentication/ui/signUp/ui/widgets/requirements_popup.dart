import 'package:flutter/material.dart';
import 'package:journal_app/app/resources/reusables.dart';
import 'package:journal_app/app/theme/colors.dart';
import 'package:journal_app/features/authentication/ui/signUp/ui/signup_view_model.dart';
import 'package:journal_app/features/shared/services/services.dart';
import 'package:stacked/stacked.dart';

class RequirementsPopup extends ViewModelWidget<SignUpViewModel> {
  const RequirementsPopup({super.key});

  @override
  Widget build(BuildContext context, SignUpViewModel viewModel) {
    // TODO: maybe find a better implementation as the barrier is not dismissed so a user may have to double click
    final bool passwordCriteriaSatisfied = _passwordCriteriaSatisfied(viewModel.password);
    return passwordCriteriaSatisfied
        ? const SizedBox()
        : Container(
            // TODO: determine if final width
            width: MediaQuery.of(context).size.width / 1.2125,
            height: 175,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(
                Radius.circular(16),
              ),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 2),
                  color: AppColors.shadowColor,
                  blurRadius: 3,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Requirement(
                  label: 'Password must contain a capital letter',
                  isSatisfied: stringService.containsUppercase(viewModel.password),
                ),
                gap4,
                Requirement(
                  label: 'Password must contain a lowercase letter',
                  isSatisfied: stringService.containsLowercase(viewModel.password),
                ),
                gap4,
                Requirement(
                  label: 'Password must contain a number',
                  isSatisfied: stringService.containsNumber(viewModel.password),
                ),
                gap4,
                Requirement(
                  label: 'Password must contain a special character',
                  isSatisfied: stringService.containsSpecialCharacter(viewModel.password),
                ),
                gap4,
                Requirement(
                  label: 'Password must contain at least 8 characters',
                  isSatisfied: stringService.contains8Characters(viewModel.password),
                ),
              ],
            ),
          );
  }
}

/// determines if the password criteria was met.
bool _passwordCriteriaSatisfied(String? password) {
  final String? allSatisfied = stringService.passwordIsValid(password);
  return allSatisfied != null && allSatisfied.isNotEmpty ? false : true;
}

class Requirement extends StatelessWidget {
  final String label;
  final bool isSatisfied;

  const Requirement({
    required this.label,
    required this.isSatisfied,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Icon(
            isSatisfied ? Icons.check_box : Icons.warning_outlined,
            color: isSatisfied ? Colors.green : Colors.red,
          ),
          gap6,
          Flexible(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color: isSatisfied ? Colors.black : const Color.fromARGB(255, 99, 98, 98),
              ),
            ),
          ),
        ],
      );
}