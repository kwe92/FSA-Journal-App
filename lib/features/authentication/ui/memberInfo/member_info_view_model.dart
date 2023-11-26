import 'package:journal_app/features/authentication/models/user.dart';
import 'package:journal_app/features/shared/services/services.dart';
import 'package:http/http.dart';
import 'package:stacked/stacked.dart';

class MemberInfoViewModel extends BaseViewModel {
  String? firstName;

  String? lastName;

  String? email;

  String? phoneNumber;

  String? password;

  bool obscurePassword = true;

  /// Check that all required fields are filled in
  bool get ready {
    return firstName != null &&
        firstName!.isNotEmpty &&
        lastName != null &&
        lastName!.isNotEmpty &&
        email != null &&
        email!.isNotEmpty &&
        phoneNumber != null &&
        phoneNumber!.isNotEmpty &&
        password != null &&
        password!.isNotEmpty;
  }

  void setFirstName(String text) {
    firstName = text;
    userService.tempUser?.firstName = firstName;
    notifyListeners();
  }

  void setLastName(String text) {
    lastName = text;
    userService.tempUser?.lastName = lastName;
    notifyListeners();
  }

  void setEmail(String text) {
    email = text.trim();
    userService.tempUser?.email = email;
    notifyListeners();
  }

  void setPassword(String text) {
    password = text.trim();
    userService.tempUser?.password = password;
    notifyListeners();
  }

  void setObscure(bool isObscured) {
    obscurePassword = isObscured;

    notifyListeners();
  }

  void setPhoneNumber(String text) {
    String phoneNumberWithCountryCode = '+1${(text.replaceAll('-', '').replaceAll(' ', '')).replaceAll('(', '').replaceAll(')', '')}';
    phoneNumber = phoneNumberWithCountryCode;
    userService.tempUser?.phoneNumber = phoneNumberWithCountryCode;
    notifyListeners();
  }

  Future<Response> signupWithEmail({required User user}) async {
    setBusy(true);
    Response response = await authService.register(user: user);
    setBusy(false);
    return response;
  }
}
