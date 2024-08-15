import 'package:expense/ui/screens/app.dart';
import 'package:expense/ui/screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  WindowManager.instance.setMinimumSize(const Size(1300, 850));
  WindowManager.instance.setMaximumSize(const Size(1300, 850));
  runApp(const ExpenseApp());
}

class ExpenseApp extends StatefulWidget {
  const ExpenseApp({super.key});

  @override
  State<ExpenseApp> createState() => _ExpenseAppState();
}

class _ExpenseAppState extends State<ExpenseApp> {
  late Future<bool> verifyWelcome;
  @override
  void initState() {
    super.initState();
    verifyWelcome = welcomeVerification();
  }

  Future<bool> welcomeVerification() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey("seen")) {
      return false;
    } else {
      //prefs.setBool("seen", true);
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense',
      theme: ThemeData(
          dividerColor: Colors.transparent,
          scaffoldBackgroundColor: const Color(0xfffafafa),
          textTheme: GoogleFonts.ralewayTextTheme(Theme.of(context).textTheme)),
      home: FutureBuilder(
          future: verifyWelcome,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              if (snapshot.data != null && snapshot.data!) {
                return const AppScreen();
              } else {
                return const WelcomeScreen();
              }
            } else {
              return const Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }
          }),
      routes: {'app': (context) => const AppScreen()},
    );
  }
}
