// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i8;
import 'package:journal_app/features/addEntry/ui/add_entry_view.dart' as _i1;
import 'package:journal_app/features/authentication/ui/memberInfo/member_info_view.dart'
    as _i4;
import 'package:journal_app/features/authentication/ui/signIn/signin_view.dart'
    as _i5;
import 'package:journal_app/features/entry/ui/entry_view.dart' as _i2;
import 'package:journal_app/features/journal/ui/journal_view.dart' as _i3;
import 'package:journal_app/features/shared/models/entry.dart' as _i7;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    AddEntryRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AddEntryView(),
      );
    },
    EntryRoute.name: (routeData) {
      final args = routeData.argsAs<EntryRouteArgs>();
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.EntryView(
          entry: args.entry,
          key: args.key,
        ),
      );
    },
    JournalRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.JournalView(),
      );
    },
    MemberInfoRoute.name: (routeData) {
      final args = routeData.argsAs<MemberInfoRouteArgs>(
          orElse: () => const MemberInfoRouteArgs());
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.MemberInfoView(key: args.key),
      );
    },
    SignInRoute.name: (routeData) {
      final args = routeData.argsAs<SignInRouteArgs>(
          orElse: () => const SignInRouteArgs());
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.SignInView(key: args.key),
      );
    },
  };
}

/// generated route for
/// [_i1.AddEntryView]
class AddEntryRoute extends _i6.PageRouteInfo<void> {
  const AddEntryRoute({List<_i6.PageRouteInfo>? children})
      : super(
          AddEntryRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddEntryRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.EntryView]
class EntryRoute extends _i6.PageRouteInfo<EntryRouteArgs> {
  EntryRoute({
    required _i7.Entry entry,
    _i8.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          EntryRoute.name,
          args: EntryRouteArgs(
            entry: entry,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'EntryRoute';

  static const _i6.PageInfo<EntryRouteArgs> page =
      _i6.PageInfo<EntryRouteArgs>(name);
}

class EntryRouteArgs {
  const EntryRouteArgs({
    required this.entry,
    this.key,
  });

  final _i7.Entry entry;

  final _i8.Key? key;

  @override
  String toString() {
    return 'EntryRouteArgs{entry: $entry, key: $key}';
  }
}

/// generated route for
/// [_i3.JournalView]
class JournalRoute extends _i6.PageRouteInfo<void> {
  const JournalRoute({List<_i6.PageRouteInfo>? children})
      : super(
          JournalRoute.name,
          initialChildren: children,
        );

  static const String name = 'JournalRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MemberInfoView]
class MemberInfoRoute extends _i6.PageRouteInfo<MemberInfoRouteArgs> {
  MemberInfoRoute({
    _i8.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          MemberInfoRoute.name,
          args: MemberInfoRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MemberInfoRoute';

  static const _i6.PageInfo<MemberInfoRouteArgs> page =
      _i6.PageInfo<MemberInfoRouteArgs>(name);
}

class MemberInfoRouteArgs {
  const MemberInfoRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'MemberInfoRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.SignInView]
class SignInRoute extends _i6.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({
    _i8.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          SignInRoute.name,
          args: SignInRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i6.PageInfo<SignInRouteArgs> page =
      _i6.PageInfo<SignInRouteArgs>(name);
}

class SignInRouteArgs {
  const SignInRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key}';
  }
}
