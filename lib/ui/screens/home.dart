import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({super.key});

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffafafa),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Symbols.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Symbols.equalizer),
            label: 'Reports',
          ),
          BottomNavigationBarItem(
            icon: Icon(Symbols.credit_card),
            label: 'Transactions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Symbols.account_balance),
            label: 'Loan simulator',
          ),
          BottomNavigationBarItem(
            icon: Icon(Symbols.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
