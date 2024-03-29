import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:journal_app/features/shared/abstractions/base_user.dart';
import 'package:journal_app/features/shared/models/new_entry.dart';
import 'package:journal_app/features/shared/services/services.dart';
import 'package:journal_app/features/shared/utilities/response_handler.dart';
import 'package:stacked/stacked.dart';

class AddEntryViewModel extends ReactiveViewModel {
  String? _content;

  Color? _moodColor;

  String? get content => _content;

  Color? get moodColor => _moodColor;

  BaseUser? get currentUser => userService.currentUser;

  DateTime? now;

  // computed variable based on content state updated with change notifier
  bool get ready {
    return _content != null && _content!.isNotEmpty;
  }

  int get continentalTime {
    return int.parse(timeService.getContinentalTime(now!));
  }

  String get dayOfWeekByName => timeService.dayOfWeekByName(now);

  String get timeOfDay => timeService.timeOfDay(now);

  @override
  List<ListenableServiceMixin> get listenableServices => [
        userService,
      ];

  void initialize(String moodType, DateTime dateTime) {
    // set the theme for the view to the color of the mood type
    _moodColor = moodService.getMoodColorByType(moodType);

    now = dateTime;
  }

  void setContent(String text) {
    _content = text.trim();
    notifyListeners();
  }

  void clearContent() {
    _content = null;

    notifyListeners();
  }

  /// attempt to add entry to the backend
  Future<bool> addEntry(String moodType, String content) async {
    // instantiate new entry
    final NewEntry newEntry = NewEntry(content: content, moodType: moodType);

    final Response response = await runBusyFuture(journalEntryService.addEntry(newEntry));

    final bool statusOk = ResponseHandler.checkStatusCode(response);

    if (statusOk) {
      clearContent();
      toastService.showSnackBar(message: "New journal entry added.");

      return statusOk;
    }
    toastService.showSnackBar(
      message: ResponseHandler.getErrorMsg(response.body),
      textColor: Colors.red,
    );

    return statusOk;
  }
}
