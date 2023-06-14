import 'package:flutter/material.dart';
import 'package:honeywellgdsmobile_app/routes/routes.dart';

void main() async {
  /*  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName:".env");*/
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: appRoutes,
      initialRoute: "imprimir",
    );

    /*  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: appRoutes,
      initialRoute: "scanerPage",
    ); */
  }
}
