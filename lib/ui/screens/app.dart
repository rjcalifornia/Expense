import 'package:expense/global.dart';
import 'package:expense/ui/screens/home.dart';
import 'package:expense/ui/screens/reports.dart';
import 'package:expense/ui/screens/transactions.dart';
import 'package:expense/ui/widgets/add_expense_dialog.dart';
import 'package:flutter/material.dart';

import 'package:material_symbols_icons/symbols.dart';
import 'package:window_manager/window_manager.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({super.key});

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  int currentIndex = 0;
  final List<Widget> screens = [
    const HomeScreen(),
    const ReportScreen(),
    const TransactionsScreen()
  ];

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
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: ExpenseColors.mainBackground,
      //   actions: [
      //     PopupMenuButton(
      //         offset: const Offset(2, 40),
      //         onSelected: (value) {},
      //         color: ExpenseColors.mainBackground,
      //         surfaceTintColor: ExpenseColors.mainBackground,
      //         itemBuilder: (BuildContext ctx) {
      //           return [
      //             const PopupMenuItem(
      //                 child: Column(
      //               children: [
      //                 Row(
      //                   children: [
      //                     Icon(
      //                       Icons.settings_outlined,
      //                       //color: BrandColors.hof,
      //                     ),
      //                     SizedBox(
      //                       width: 3,
      //                     ),
      //                     Text(
      //                       "Settings",
      //                       //style: TextStyle(color: BrandColors.hof),
      //                     ),
      //                     SizedBox(
      //                       width: 4,
      //                     ),
      //                   ],
      //                 )
      //               ],
      //             )),
      //           ];
      //         }),
      //   ],
      // ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ExpenseColors.brand,
        onPressed: () {
          addExpense(context);
        },
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
              icon: Icon(Symbols.home,
                  color: currentIndex == 0
                      ? ExpenseColors.selected
                      : ExpenseColors.unselected),
              tooltip: 'Home',
            ),
            IconButton(
              onPressed: () {
                onItemTapped(1);
              },
              icon: Icon(
                Symbols.equalizer,
                color: currentIndex == 1
                    ? ExpenseColors.selected
                    : ExpenseColors.unselected,
              ),
              tooltip: 'Reports',
            ),
            //  const Divider(),
            IconButton(
              onPressed: () {
                onItemTapped(2);
              },
              icon: Icon(Symbols.credit_card,
                  color: currentIndex == 2
                      ? ExpenseColors.selected
                      : ExpenseColors.unselected),
              tooltip: 'Transactions',
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Symbols.account_balance,
                  color: currentIndex == 3
                      ? ExpenseColors.selected
                      : ExpenseColors.unselected),
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
