// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:journal_app/features/shared/abstractions/base_user.dart';
import 'package:journal_app/features/shared/services/services.dart';
import 'package:journal_app/features/shared/utilities/popup_parameters.dart';
import 'package:stacked/stacked.dart';

class ProfileSettingsViewModel extends ReactiveViewModel {
  BaseUser? get currentUser {
    return userService.currentUser;
  }

  String get userFullName => "${currentUser?.firstName ?? ''} ${currentUser?.lastName ?? ''}";

  String get userEmail => currentUser?.email ?? '';

  @override
  List<ListenableServiceMixin> get listenableServices => [
        userService,
      ];

  Future<void> deleteAccountPopupMenu(BuildContext context) async {
    toastService.deleteAccountPopupMenu<bool>(
      context,
      parameters: const PopupMenuParameters(
        title: 'Permanantly delete account?',
        content: 'ALL account information will be removed from our system without recovery.',
        defaultResult: false,
        options: {
          "Delete": true,
          "Cancel": false,
        },
      ),
    );
  }
}
