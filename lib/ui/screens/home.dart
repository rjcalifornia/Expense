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
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40.0),
                              color:
                                  ExpenseColors.expenseBlue.withOpacity(0.70)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Expense",
                                style: TextStyle(
                                    color: Color(0xffE6EAFF),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                              Text(
                                "Welcome back",
                                style: TextStyle(
                                    color: Color(0xffDADADC),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.8,
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40.0),
                                      color:
                                          Color(0xffDADADC).withOpacity(0.25)),
                                  child: Column(
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
                              SizedBox(
                                height: 20,
                              ),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                    width: 186,
                                    height: 48,
                                    child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                            backgroundColor: Color(0xff2758ED),
                                            side: BorderSide(
                                                color: Colors.white,
                                                width: 1.3)),
                                        onPressed: () {},
                                        child: Text(
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
                const Text("Column 1"),
              ],
            ),
          ),
          Expanded(
              child: Column(
            children: [Text("Column 2")],
          ))
        ],
      ),
    );
  }
}
