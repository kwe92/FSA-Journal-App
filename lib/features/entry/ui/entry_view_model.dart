import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:journal_app/features/entry/models/updated_entry.dart';
import 'package:journal_app/features/shared/abstractions/base_user.dart';
import 'package:journal_app/features/shared/models/journal_entry.dart';
import 'package:journal_app/features/shared/services/services.dart';
import 'package:journal_app/features/shared/utilities/popup_parameters.dart';
import 'package:journal_app/features/shared/utilities/response_handler.dart';
import 'package:stacked/stacked.dart';

class EntryviewModel extends ReactiveViewModel {
  final TextEditingController entryController = TextEditingController();

  final FocusNode entryFocus = FocusNode();

  final JournalEntry entry;

  String? _content;

  Color? _moodColor;

  bool _readOnly = true;

  String? get content => _content;

  bool get isIdenticalContent => content == entry.content.trim();

  bool get readOnly => _readOnly;

  int get continentalTime {
    return int.parse(timeService.getContinentalTime(entry.updatedAt.toLocal()));
  }

  String get dayOfWeekByName => timeService.dayOfWeekByName(entry.updatedAt.toLocal());

  String get timeOfDay => timeService.timeOfDay(entry.updatedAt.toLocal());

  Color? get moodColor => _moodColor;

  BaseUser? get _currentUser => userService.currentUser;

  BaseUser? get currentUser => _currentUser;

  EntryviewModel({required this.entry});

// required override for ReactiveViewModel to react to changes in a service
  @override
  List<ListenableServiceMixin> get listenableServices => [
        userService,
      ];

  void initialize() {
    setContent(entry.content);
    entryController.text = _content!;
    _moodColor = moodService.getMoodColorByType(entry.moodType);
  }

  void setContent(String text) {
    _content = text.trim();
    notifyListeners();
  }

  void clearContent() {
    _content = null;
    notifyListeners();
  }

  void setReadOnly(bool isReadOnly) {
    _readOnly = isReadOnly;
    notifyListeners();
  }

  /// update journal entry via API call to backend
  Future<bool> updateEntry() async {
    final UpdatedEntry updatedEntry = UpdatedEntry(
      entryId: entry.entryId,
      content: content,
    );
    final Response response = await runBusyFuture(journalEntryService.updateEntry(updatedEntry));

    // check status code and display a snack bar on success

    final bool statusOk = ResponseHandler.checkStatusCode(response);

    if (statusOk) {
      clearContent();

      toastService.showSnackBar(
        message: "Updated journal entry successfully.",
      );

      return statusOk;
    }

    toastService.showSnackBar(
      message: ResponseHandler.getErrorMsg(response.body),
      textColor: Colors.red,
    );

    return statusOk;
  }

  /// delete journal entry via API call to backend
  Future<bool> deleteEntry(int entryId) async {
    final Response response = await runBusyFuture(journalEntryService.deleteEntry(entryId));

    // check status code and display a snack bar on success

    final bool statusOk = ResponseHandler.checkStatusCode(response);

    if (statusOk) {
      clearContent();
      toastService.showSnackBar(message: "Deleted journal entry successfully.");

      return statusOk;
    }

    toastService.showSnackBar(
      message: ResponseHandler.getErrorMsg(response.body),
      textColor: Colors.red,
    );

    return statusOk;
  }

  /// popup menu warning the user of permanent entry deletion
  Future<bool> continueDelete(BuildContext context, Color color) async {
    return await toastService.popupMenu<bool>(
      context,
      color: color,
      parameters: const PopupMenuParameters(
        title: "Delete Entry",
        content: "Are you sure you want to delete this entry?",
        defaultResult: false,
        options: {
          "Delete Entry": true,
          "Cancel": false,
        },
      ),
    );
  }
}

// DateTime.toLocal()

//   - Return DateTime value in the local timezone of the user
//   - should use to ensure the value matches what the back end sends

