import 'package:expense/global.dart';
import 'package:flutter/material.dart';

Future<void> addExpense(BuildContext context) {
  return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding:
              const EdgeInsets.only(top: 30, bottom: 30, left: 50, right: 50),
          surfaceTintColor: Color(0xffF5F5F5),
          content: Container(
            width: 300,
            height: MediaQuery.of(context).size.height / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                          icon: const Icon(Icons.arrow_back),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    ),
                    const Expanded(
                        child: Center(
                      child: Text(
                        "Add new expense",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ))
                  ],
                ),
                const SizedBox(
                  height: 28,
                ),
                const Row(
                  children: [
                    Text(
                      "Amount",
                      style: TextStyle(color: ExpenseColors.expenseLabels),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (value) {},
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    decoration: InputDecoration(
                      filled: false,
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xffa0a0a0))),
                      focusColor: const Color(0xffa0a0a0),
                      hoverColor: const Color(0xffa0a0a0),
                      fillColor: const Color(0xffF5F5F5),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Color(0xffa0a0a0))),
                      labelText: "Enter amount",
                    ))
              ],
            ),
          ),
        );
      });
}
