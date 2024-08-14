import 'package:expense/global.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 28, bottom: 28, left: 40, right: 40),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height / 3,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40.0),
                              color:
                                  ExpenseColors.expenseBlue.withOpacity(0.70)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Expense",
                                style: TextStyle(
                                    color: Color(0xffE6EAFF),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                              const Text(
                                "Welcome back",
                                style: TextStyle(
                                    color: Color(0xffDADADC),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.8,
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: const Color(0xffDADADC)
                                          .withOpacity(0.25)),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Balance",
                                        style: TextStyle(
                                            color: Color(0xffE6EAFF),
                                            fontSize: 14),
                                      ),
                                      Text(
                                        '\$50,540.00',
                                        style: TextStyle(
                                            fontSize: 30, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                    width: 186,
                                    height: 48,
                                    child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xff2758ED),
                                            side: const BorderSide(
                                                color: Colors.white,
                                                width: 1.3)),
                                        onPressed: () {},
                                        child: const Text(
                                          "Add income",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600),
                                        )),
                                  ))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Transactions",
                      style: TextStyle(
                          color: Color(0xff323236),
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                    Text("View all",
                        style: TextStyle(
                            color: Color(0xff83848B),
                            fontWeight: FontWeight.w400,
                            fontSize: 12))
                  ],
                ),
                const Text("Column 1"),
              ],
            ),
          ),
          const Expanded(
              flex: 2,
              child: Column(
                children: [Text("Column 2")],
              ))
        ],
      ),
    );
  }
}
