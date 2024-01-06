// Mocks generated by Mockito 5.4.4 from annotations
// in journal_app/test/support/test_helpers.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i7;
import 'dart:convert' as _i15;
import 'dart:typed_data' as _i16;
import 'dart:ui' as _i4;

import 'package:auto_route/auto_route.dart' as _i14;
import 'package:http/http.dart' as _i2;
import 'package:journal_app/features/authentication/services/user_service.dart'
    as _i5;
import 'package:journal_app/features/entry/models/updated_entry.dart' as _i12;
import 'package:journal_app/features/journal/services/journal_entry_service.dart'
    as _i9;
import 'package:journal_app/features/mood/models/mood.dart' as _i3;
import 'package:journal_app/features/shared/abstractions/base_user.dart' as _i8;
import 'package:journal_app/features/shared/models/journal_entry.dart' as _i10;
import 'package:journal_app/features/shared/models/new_entry.dart' as _i11;
import 'package:journal_app/features/shared/services/mood_service.dart' as _i17;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i6;

import 'test_helpers.dart' as _i13;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeResponse_0 extends _i1.SmartFake implements _i2.Response {
  _FakeResponse_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeStreamedResponse_1 extends _i1.SmartFake
    implements _i2.StreamedResponse {
  _FakeStreamedResponse_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeMood_2 extends _i1.SmartFake implements _i3.Mood {
  _FakeMood_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeColor_3 extends _i1.SmartFake implements _i4.Color {
  _FakeColor_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [UserService].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserService extends _i1.Mock implements _i5.UserService {
  @override
  String get bearerPrefix => (super.noSuchMethod(
        Invocation.getter(#bearerPrefix),
        returnValue: _i6.dummyValue<String>(
          this,
          Invocation.getter(#bearerPrefix),
        ),
        returnValueForMissingStub: _i6.dummyValue<String>(
          this,
          Invocation.getter(#bearerPrefix),
        ),
      ) as String);

  @override
  Map<String, String> get headers => (super.noSuchMethod(
        Invocation.getter(#headers),
        returnValue: <String, String>{},
        returnValueForMissingStub: <String, String>{},
      ) as Map<String, String>);

  @override
  String get host => (super.noSuchMethod(
        Invocation.getter(#host),
        returnValue: _i6.dummyValue<String>(
          this,
          Invocation.getter(#host),
        ),
        returnValueForMissingStub: _i6.dummyValue<String>(
          this,
          Invocation.getter(#host),
        ),
      ) as String);

  @override
  int get listenersCount => (super.noSuchMethod(
        Invocation.getter(#listenersCount),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);

  @override
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  _i7.Future<void> createTempUser() => (super.noSuchMethod(
        Invocation.method(
          #createTempUser,
          [],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);

  @override
  void setCurrentUser(Map<String, dynamic>? responseBody) => super.noSuchMethod(
        Invocation.method(
          #setCurrentUser,
          [responseBody],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i7.Future<_i2.Response> updateUserInfo(_i8.BaseUser? updatedUser) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateUserInfo,
          [updatedUser],
        ),
        returnValue: _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #updateUserInfo,
            [updatedUser],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #updateUserInfo,
            [updatedUser],
          ),
        )),
      ) as _i7.Future<_i2.Response>);

  @override
  void clearUserData() => super.noSuchMethod(
        Invocation.method(
          #clearUserData,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void clearTempUserData() => super.noSuchMethod(
        Invocation.method(
          #clearTempUserData,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void setTempUserFirstName(String? val) => super.noSuchMethod(
        Invocation.method(
          #setTempUserFirstName,
          [val],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void setTempUserLastName(String? val) => super.noSuchMethod(
        Invocation.method(
          #setTempUserLastName,
          [val],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void setTempUserEmail(String? val) => super.noSuchMethod(
        Invocation.method(
          #setTempUserEmail,
          [val],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void setTempUserPhoneNumber(String? val) => super.noSuchMethod(
        Invocation.method(
          #setTempUserPhoneNumber,
          [val],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void setTempUserPassword(String? val) => super.noSuchMethod(
        Invocation.method(
          #setTempUserPassword,
          [val],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i7.Future<_i2.Response> get(
    String? endpoint, {
    String? tempHost,
    Map<String, String>? extraHeaders,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [endpoint],
          {
            #tempHost: tempHost,
            #extraHeaders: extraHeaders,
          },
        ),
        returnValue: _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #get,
            [endpoint],
            {
              #tempHost: tempHost,
              #extraHeaders: extraHeaders,
            },
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #get,
            [endpoint],
            {
              #tempHost: tempHost,
              #extraHeaders: extraHeaders,
            },
          ),
        )),
      ) as _i7.Future<_i2.Response>);

  @override
  _i7.Future<_i2.Response> post(
    String? endpoint, {
    required dynamic body,
    String? tempHost,
    Map<String, String>? baseHeaders,
    Map<String, String>? extraHeaders,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #post,
          [endpoint],
          {
            #body: body,
            #tempHost: tempHost,
            #baseHeaders: baseHeaders,
            #extraHeaders: extraHeaders,
          },
        ),
        returnValue: _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #post,
            [endpoint],
            {
              #body: body,
              #tempHost: tempHost,
              #baseHeaders: baseHeaders,
              #extraHeaders: extraHeaders,
            },
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #post,
            [endpoint],
            {
              #body: body,
              #tempHost: tempHost,
              #baseHeaders: baseHeaders,
              #extraHeaders: extraHeaders,
            },
          ),
        )),
      ) as _i7.Future<_i2.Response>);

  @override
  _i7.Future<_i2.Response> put(
    String? endpoint, {
    required dynamic body,
    String? tempHost,
    Map<String, String>? extraHeaders,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #put,
          [endpoint],
          {
            #body: body,
            #tempHost: tempHost,
            #extraHeaders: extraHeaders,
          },
        ),
        returnValue: _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #put,
            [endpoint],
            {
              #body: body,
              #tempHost: tempHost,
              #extraHeaders: extraHeaders,
            },
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #put,
            [endpoint],
            {
              #body: body,
              #tempHost: tempHost,
              #extraHeaders: extraHeaders,
            },
          ),
        )),
      ) as _i7.Future<_i2.Response>);

  @override
  _i7.Future<_i2.Response> delete(
    String? endpoint, {
    dynamic body,
    String? tempHost,
    Map<String, String>? extraHeaders,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [endpoint],
          {
            #body: body,
            #tempHost: tempHost,
            #extraHeaders: extraHeaders,
          },
        ),
        returnValue: _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #delete,
            [endpoint],
            {
              #body: body,
              #tempHost: tempHost,
              #extraHeaders: extraHeaders,
            },
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #delete,
            [endpoint],
            {
              #body: body,
              #tempHost: tempHost,
              #extraHeaders: extraHeaders,
            },
          ),
        )),
      ) as _i7.Future<_i2.Response>);

  @override
  void listenToReactiveValues(List<dynamic>? reactiveValues) =>
      super.noSuchMethod(
        Invocation.method(
          #listenToReactiveValues,
          [reactiveValues],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void addListener(_i4.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void removeListener(_i4.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #removeListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void notifyListeners() => super.noSuchMethod(
        Invocation.method(
          #notifyListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [JournalEntryService].
///
/// See the documentation for Mockito's code generation for more information.
class MockJournalEntryService extends _i1.Mock
    implements _i9.JournalEntryService {
  @override
  List<_i10.JournalEntry> get journalEntries => (super.noSuchMethod(
        Invocation.getter(#journalEntries),
        returnValue: <_i10.JournalEntry>[],
        returnValueForMissingStub: <_i10.JournalEntry>[],
      ) as List<_i10.JournalEntry>);

  @override
  set journalEntries(List<_i10.JournalEntry>? _journalEntries) =>
      super.noSuchMethod(
        Invocation.setter(
          #journalEntries,
          _journalEntries,
        ),
        returnValueForMissingStub: null,
      );

  @override
  String get bearerPrefix => (super.noSuchMethod(
        Invocation.getter(#bearerPrefix),
        returnValue: _i6.dummyValue<String>(
          this,
          Invocation.getter(#bearerPrefix),
        ),
        returnValueForMissingStub: _i6.dummyValue<String>(
          this,
          Invocation.getter(#bearerPrefix),
        ),
      ) as String);

  @override
  Map<String, String> get headers => (super.noSuchMethod(
        Invocation.getter(#headers),
        returnValue: <String, String>{},
        returnValueForMissingStub: <String, String>{},
      ) as Map<String, String>);

  @override
  String get host => (super.noSuchMethod(
        Invocation.getter(#host),
        returnValue: _i6.dummyValue<String>(
          this,
          Invocation.getter(#host),
        ),
        returnValueForMissingStub: _i6.dummyValue<String>(
          this,
          Invocation.getter(#host),
        ),
      ) as String);

  @override
  int get listenersCount => (super.noSuchMethod(
        Invocation.getter(#listenersCount),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);

  @override
  _i7.Future<_i2.Response> getAllEntries() => (super.noSuchMethod(
        Invocation.method(
          #getAllEntries,
          [],
        ),
        returnValue: _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #getAllEntries,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #getAllEntries,
            [],
          ),
        )),
      ) as _i7.Future<_i2.Response>);

  @override
  _i7.Future<_i2.Response> addEntry(_i11.NewEntry? newEntry) =>
      (super.noSuchMethod(
        Invocation.method(
          #addEntry,
          [newEntry],
        ),
        returnValue: _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #addEntry,
            [newEntry],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #addEntry,
            [newEntry],
          ),
        )),
      ) as _i7.Future<_i2.Response>);

  @override
  _i7.Future<_i2.Response> updateEntry(_i12.UpdatedEntry? updatedEntry) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateEntry,
          [updatedEntry],
        ),
        returnValue: _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #updateEntry,
            [updatedEntry],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #updateEntry,
            [updatedEntry],
          ),
        )),
      ) as _i7.Future<_i2.Response>);

  @override
  _i7.Future<_i2.Response> deleteEntry(int? entryId) => (super.noSuchMethod(
        Invocation.method(
          #deleteEntry,
          [entryId],
        ),
        returnValue: _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #deleteEntry,
            [entryId],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #deleteEntry,
            [entryId],
          ),
        )),
      ) as _i7.Future<_i2.Response>);

  @override
  _i7.Future<_i2.Response> get(
    String? endpoint, {
    String? tempHost,
    Map<String, String>? extraHeaders,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [endpoint],
          {
            #tempHost: tempHost,
            #extraHeaders: extraHeaders,
          },
        ),
        returnValue: _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #get,
            [endpoint],
            {
              #tempHost: tempHost,
              #extraHeaders: extraHeaders,
            },
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #get,
            [endpoint],
            {
              #tempHost: tempHost,
              #extraHeaders: extraHeaders,
            },
          ),
        )),
      ) as _i7.Future<_i2.Response>);

  @override
  _i7.Future<_i2.Response> post(
    String? endpoint, {
    required dynamic body,
    String? tempHost,
    Map<String, String>? baseHeaders,
    Map<String, String>? extraHeaders,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #post,
          [endpoint],
          {
            #body: body,
            #tempHost: tempHost,
            #baseHeaders: baseHeaders,
            #extraHeaders: extraHeaders,
          },
        ),
        returnValue: _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #post,
            [endpoint],
            {
              #body: body,
              #tempHost: tempHost,
              #baseHeaders: baseHeaders,
              #extraHeaders: extraHeaders,
            },
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #post,
            [endpoint],
            {
              #body: body,
              #tempHost: tempHost,
              #baseHeaders: baseHeaders,
              #extraHeaders: extraHeaders,
            },
          ),
        )),
      ) as _i7.Future<_i2.Response>);

  @override
  _i7.Future<_i2.Response> put(
    String? endpoint, {
    required dynamic body,
    String? tempHost,
    Map<String, String>? extraHeaders,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #put,
          [endpoint],
          {
            #body: body,
            #tempHost: tempHost,
            #extraHeaders: extraHeaders,
          },
        ),
        returnValue: _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #put,
            [endpoint],
            {
              #body: body,
              #tempHost: tempHost,
              #extraHeaders: extraHeaders,
            },
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #put,
            [endpoint],
            {
              #body: body,
              #tempHost: tempHost,
              #extraHeaders: extraHeaders,
            },
          ),
        )),
      ) as _i7.Future<_i2.Response>);

  @override
  _i7.Future<_i2.Response> delete(
    String? endpoint, {
    dynamic body,
    String? tempHost,
    Map<String, String>? extraHeaders,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [endpoint],
          {
            #body: body,
            #tempHost: tempHost,
            #extraHeaders: extraHeaders,
          },
        ),
        returnValue: _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #delete,
            [endpoint],
            {
              #body: body,
              #tempHost: tempHost,
              #extraHeaders: extraHeaders,
            },
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #delete,
            [endpoint],
            {
              #body: body,
              #tempHost: tempHost,
              #extraHeaders: extraHeaders,
            },
          ),
        )),
      ) as _i7.Future<_i2.Response>);

  @override
  void listenToReactiveValues(List<dynamic>? reactiveValues) =>
      super.noSuchMethod(
        Invocation.method(
          #listenToReactiveValues,
          [reactiveValues],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void addListener(void Function()? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void removeListener(void Function()? listener) => super.noSuchMethod(
        Invocation.method(
          #removeListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void notifyListeners() => super.noSuchMethod(
        Invocation.method(
          #notifyListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [MockRouter].
///
/// See the documentation for Mockito's code generation for more information.
class MockAppRouter extends _i1.Mock implements _i13.MockRouter {
  @override
  List<_i14.AutoRoute> get routes => (super.noSuchMethod(
        Invocation.getter(#routes),
        returnValue: <_i14.AutoRoute>[],
        returnValueForMissingStub: <_i14.AutoRoute>[],
      ) as List<_i14.AutoRoute>);
}

/// A class which mocks [Client].
///
/// See the documentation for Mockito's code generation for more information.
class MockClient extends _i1.Mock implements _i2.Client {
  @override
  _i7.Future<_i2.Response> head(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #head,
          [url],
          {#headers: headers},
        ),
        returnValue: _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #head,
            [url],
            {#headers: headers},
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #head,
            [url],
            {#headers: headers},
          ),
        )),
      ) as _i7.Future<_i2.Response>);

  @override
  _i7.Future<_i2.Response> get(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [url],
          {#headers: headers},
        ),
        returnValue: _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #get,
            [url],
            {#headers: headers},
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #get,
            [url],
            {#headers: headers},
          ),
        )),
      ) as _i7.Future<_i2.Response>);

  @override
  _i7.Future<_i2.Response> post(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i15.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #post,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #post,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #post,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i7.Future<_i2.Response>);

  @override
  _i7.Future<_i2.Response> put(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i15.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #put,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #put,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #put,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i7.Future<_i2.Response>);

  @override
  _i7.Future<_i2.Response> patch(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i15.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #patch,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #patch,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #patch,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i7.Future<_i2.Response>);

  @override
  _i7.Future<_i2.Response> delete(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i15.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #delete,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #delete,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i7.Future<_i2.Response>);

  @override
  _i7.Future<String> read(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #read,
          [url],
          {#headers: headers},
        ),
        returnValue: _i7.Future<String>.value(_i6.dummyValue<String>(
          this,
          Invocation.method(
            #read,
            [url],
            {#headers: headers},
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<String>.value(_i6.dummyValue<String>(
          this,
          Invocation.method(
            #read,
            [url],
            {#headers: headers},
          ),
        )),
      ) as _i7.Future<String>);

  @override
  _i7.Future<_i16.Uint8List> readBytes(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #readBytes,
          [url],
          {#headers: headers},
        ),
        returnValue: _i7.Future<_i16.Uint8List>.value(_i16.Uint8List(0)),
        returnValueForMissingStub:
            _i7.Future<_i16.Uint8List>.value(_i16.Uint8List(0)),
      ) as _i7.Future<_i16.Uint8List>);

  @override
  _i7.Future<_i2.StreamedResponse> send(_i2.BaseRequest? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #send,
          [request],
        ),
        returnValue:
            _i7.Future<_i2.StreamedResponse>.value(_FakeStreamedResponse_1(
          this,
          Invocation.method(
            #send,
            [request],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i2.StreamedResponse>.value(_FakeStreamedResponse_1(
          this,
          Invocation.method(
            #send,
            [request],
          ),
        )),
      ) as _i7.Future<_i2.StreamedResponse>);

  @override
  void close() => super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [MoodService].
///
/// See the documentation for Mockito's code generation for more information.
class MockMoodService extends _i1.Mock implements _i17.MoodService {
  @override
  List<
          MapEntry<String,
              ({_i4.Color color, double defaultSize, String imagePath})>>
      get moods => (super.noSuchMethod(
            Invocation.getter(#moods),
            returnValue: <MapEntry<String,
                ({_i4.Color color, double defaultSize, String imagePath})>>[],
            returnValueForMissingStub: <MapEntry<String,
                ({_i4.Color color, double defaultSize, String imagePath})>>[],
          ) as List<
              MapEntry<String,
                  ({_i4.Color color, double defaultSize, String imagePath})>>);

  @override
  _i3.Mood createMoodByType(
    String? moodType, [
    double? size,
  ]) =>
      (super.noSuchMethod(
        Invocation.method(
          #createMoodByType,
          [
            moodType,
            size,
          ],
        ),
        returnValue: _FakeMood_2(
          this,
          Invocation.method(
            #createMoodByType,
            [
              moodType,
              size,
            ],
          ),
        ),
        returnValueForMissingStub: _FakeMood_2(
          this,
          Invocation.method(
            #createMoodByType,
            [
              moodType,
              size,
            ],
          ),
        ),
      ) as _i3.Mood);

  @override
  _i4.Color getMoodColorByType(String? moodType) => (super.noSuchMethod(
        Invocation.method(
          #getMoodColorByType,
          [moodType],
        ),
        returnValue: _FakeColor_3(
          this,
          Invocation.method(
            #getMoodColorByType,
            [moodType],
          ),
        ),
        returnValueForMissingStub: _FakeColor_3(
          this,
          Invocation.method(
            #getMoodColorByType,
            [moodType],
          ),
        ),
      ) as _i4.Color);

  @override
  MapEntry<String, ({_i4.Color color, double defaultSize, String imagePath})>
      getMoodByIndex(int? index) => (super.noSuchMethod(
            Invocation.method(
              #getMoodByIndex,
              [index],
            ),
            returnValue: _i6.dummyValue<
                MapEntry<String,
                    ({_i4.Color color, double defaultSize, String imagePath})>>(
              this,
              Invocation.method(
                #getMoodByIndex,
                [index],
              ),
            ),
            returnValueForMissingStub: _i6.dummyValue<
                MapEntry<String,
                    ({_i4.Color color, double defaultSize, String imagePath})>>(
              this,
              Invocation.method(
                #getMoodByIndex,
                [index],
              ),
            ),
          ) as MapEntry<String,
              ({_i4.Color color, double defaultSize, String imagePath})>);
}
