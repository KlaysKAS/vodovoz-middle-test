import 'package:flutter/material.dart';
import 'package:vz_mid/db/helper.dart';
import 'package:vz_mid/db/tables.dart';

late final DBHelper db;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  db = DBHelper(EmployerTable(), ScheduleTable());
  await db.open();
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
      home: const Center(child: Text('Init')),
    );
  }
}
