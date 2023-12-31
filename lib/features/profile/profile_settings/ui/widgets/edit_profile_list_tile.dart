import 'package:flutter/material.dart';
import 'package:journal_app/app/app_router.gr.dart';
import 'package:journal_app/app/resources/reusables.dart';
import 'package:journal_app/app/theme/colors.dart';
import 'package:journal_app/features/shared/services/services.dart';
import 'package:journal_app/features/shared/utilities/common_box_shadow.dart';

class EditProfileListTile extends StatelessWidget {
  final String userFullName;
  final String userEmail;
  const EditProfileListTile({
    required this.userFullName,
    required this.userEmail,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => appRouter.push(const EditProfileRoute()),
      child: Container(
        height: 90,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: const BoxDecoration(
          color: AppColors.offWhite,
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
          boxShadow: [CommonBoxShadow()],
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.offGrey.withOpacity(0.25),
                borderRadius: const BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              child: const Icon(
                Icons.person_outline,
                color: AppColors.offGrey,
              ),
            ),
            gap16,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  userFullName,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                gap4,
                Text(
                  userEmail,
                  style: TextStyle(
                    fontSize: 10,
                    color: AppColors.offGrey.withOpacity(0.85),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
