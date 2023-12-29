import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:journal_app/features/authentication/models/user.dart';
import 'package:journal_app/features/shared/utilities/string_extensions.dart';
import 'package:journal_app/features/profile/edit_profile/model/updated_user.dart';
import 'package:journal_app/features/shared/services/services.dart';
import 'package:journal_app/features/shared/utilities/response_handler.dart';
import 'package:stacked/stacked.dart';

class EditProfileViewModel extends ReactiveViewModel {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController firstNameController = TextEditingController();

  final TextEditingController lastNameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  // Mutable Variables

  bool _readOnly = true;

  String? _updatedFirstName;

  String? _updatedLastName;

  String? _updatedEmail;

  ImageProvider? _mindfulImage;

  // Computed User Variables

  User get _currentUser => userService.currentUser!;

  String get userFirstName => _currentUser.firstName!;

  String get userLastName => _currentUser.lastName!;

  String get userEmail => _currentUser.email!;

  // Computed Update Variables

  String? get updatedFirstName => _updatedFirstName;

  String? get updatedLastName => _updatedLastName;

  String? get updatedEmail => _updatedEmail;

  bool get readOnly => _readOnly;

  // Other Computed Variables

  ImageProvider? get mindfulImage => _mindfulImage;

  bool get ready =>
      _updatedFirstName != null &&
      _updatedFirstName!.isNotEmpty &&
      _updatedLastName != null &&
      _updatedLastName!.isNotEmpty &&
      _updatedEmail != null &&
      _updatedEmail!.isNotEmpty;

  @override
  List<ListenableServiceMixin> get listenableServices => [
        userService,
        imageService,
      ];

  void initialize() {
    setBusy(true);

    _mindfulImage = imageService.getRandomMindfulImage();

    firstNameController.text = userFirstName;
    lastNameController.text = userLastName;
    emailController.text = userEmail;

    setFirstName(userFirstName);
    setLastName(userLastName);
    setEmail(userEmail);

    setBusy(false);
  }

  // Setter Functions

  void setFirstName(String value) {
    _updatedFirstName = value.trim();
    debugPrint(value);
    notifyListeners();
  }

  void setLastName(String value) {
    _updatedLastName = value.trim();
    debugPrint(value);
    notifyListeners();
  }

  void setEmail(String value) {
    _updatedEmail = value.trim();
    debugPrint(value);
    notifyListeners();
  }

  void setReadOnly(bool readOnly) {
    _readOnly = readOnly;
    notifyListeners();
  }

  void clearControllers() {
    firstNameController.clear();
    lastNameController.clear();
    emailController.clear();
  }

  Future<bool> updateUserInfo() async {
    // TODO: add phone number
    final UpdatedUser updatedUser = UpdatedUser(
      firstName: updatedFirstName!.toLowerCase().capitalize().trim(),
      lastName: updatedLastName!.toLowerCase().capitalize().trim(),
      email: updatedEmail!.toLowerCase().trim(),
    );

    // attempt to update currently authenticated user
    final Response response = await userService.updateUserInfo(updatedUser);

    // check status code
    final bool statusOk = ResponseHandler.checkStatusCode(response);

    if (!statusOk) {
      toastService.showSnackBar(
        message: ResponseHandler.getErrorMsg(response.body),
        textColor: Colors.red,
      );

      return statusOk;
    }

    return statusOk;
  }
}
