import 'package:flutter/services.dart';
import 'package:journal_app/app/theme/theme.dart';
import 'package:journal_app/features/shared/services/get_it.dart';
import 'package:flutter/material.dart';
import 'package:journal_app/features/shared/services/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  //
  await configureDependencies();

  // ensure token is removed from user device on app startup
  await tokenService.removeAccessTokenFromStorage();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.getTheme(),
      routerConfig: appRouter.config(),
    );
  }
}
