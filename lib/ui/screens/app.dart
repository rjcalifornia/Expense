import 'package:expense/global.dart';
import 'package:expense/ui/screens/home.dart';
import 'package:expense/ui/screens/reports.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:material_symbols_icons/symbols.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({super.key});

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  int currentIndex = 0;
  final List<Widget> screens = [const HomeScreen(), const ReportScreen()];

  void onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ExpenseColors.mainBackground,
      body: screens.elementAt(currentIndex),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ExpenseColors.brand,
        onPressed: () {},
        tooltip: 'Add new expense',
        shape: const CircleBorder(),
        elevation: 0,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(), surfaceTintColor: Colors.white,
        elevation: 48.0,
        shadowColor: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                onItemTapped(0);
              },
              icon: const Icon(Symbols.home, color: ExpenseColors.selected),
              tooltip: 'Home',
            ),
            IconButton(
              onPressed: () {
                onItemTapped(1);
              },
              icon: const Icon(
                Symbols.equalizer,
                color: ExpenseColors.unselected,
              ),
              tooltip: 'Reports',
            ),
            //  const Divider(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Symbols.credit_card,
                  color: ExpenseColors.unselected),
              tooltip: 'Transactions',
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Symbols.account_balance,
                  color: ExpenseColors.unselected),
              tooltip: 'Loan simulator',
            ),
            // IconButton(
            //   onPressed: () {},
            //   icon:
            //       const Icon(Symbols.settings, color: ExpenseColors.unselected),
            //   tooltip: 'Settings',
            // ),
          ],
        ),
        //   BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,
        // showSelectedLabels: true,
        // showUnselectedLabels: false,
        // selectedItemColor: ExpenseColors.brand,
        // unselectedItemColor: ExpenseColors.unselected,
        // items: const <BottomNavigationBarItem>[
        //   BottomNavigationBarItem(
        //     icon: Icon(Symbols.home),
        //     label: 'Home',
        //   ),
        //   BottomNavigationBarItem(
        //     icon: Icon(Symbols.equalizer),
        //     label: 'Reports',
        //   ),
        //   BottomNavigationBarItem(
        //     icon: Icon(Symbols.credit_card),
        //     label: 'Transactions',
        //   ),
        //   BottomNavigationBarItem(
        //     icon: Icon(Symbols.account_balance),
        //     label: 'Loan simulator',
        //   ),
        // BottomNavigationBarItem(
        //   icon: Icon(Symbols.settings),
        //   label: 'Settings',
        // ),
        // ],
      ),
    );
  }
}
