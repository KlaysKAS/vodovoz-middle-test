import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:vz_mid/service_locator/app_locator.dart';
import 'package:vz_mid/service_locator/locator.dart';
import 'package:vz_mid/ui/schedule_page/employer_list.dart';

late final Locator locator;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  locator = AppLocator();
  await locator.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ru'),
      ],
      home: const EmployerList(),
    );
  }
}
