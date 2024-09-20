import 'package:expense/global.dart';
import 'package:flutter/material.dart';

class AddExpenseWidget extends StatefulWidget {
  const AddExpenseWidget({super.key});

  @override
  State<AddExpenseWidget> createState() => _AddExpenseWidgetState();
}

class _AddExpenseWidgetState extends State<AddExpenseWidget> {
  int? _value;
  @override
  Widget build(BuildContext context) {
    const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

    return FloatingActionButton(
      backgroundColor: ExpenseColors.brand,
      onPressed: () {
        showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return StatefulBuilder(
                builder: (context, setState) {
                  return AlertDialog(
                    contentPadding: const EdgeInsets.only(
                        top: 30, bottom: 30, left: 50, right: 50),
                    surfaceTintColor: const Color(0xffF5F5F5),
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
                                      setState(() {
                                        _value = null;
                                      });
                                      Navigator.pop(context);
                                    }),
                              ),
                              const Expanded(
                                  child: Center(
                                child: Text(
                                  "Add new expense",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
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
                                style: TextStyle(
                                    color: ExpenseColors.expenseLabels),
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
                                focusedBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xffa0a0a0))),
                                focusColor: const Color(0xffa0a0a0),
                                hoverColor: const Color(0xffa0a0a0),
                                fillColor: const Color(0xffF5F5F5),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Color(0xffa0a0a0))),
                                labelText: "Enter amount",
                              )),
                          const SizedBox(
                            height: 18,
                          ),
                          const Row(
                            children: [
                              Text(
                                "Payee",
                                style: TextStyle(
                                    color: ExpenseColors.expenseLabels),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          DropdownButtonFormField(
                            decoration: InputDecoration(
                              fillColor: const Color(0xffF5F5F5),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      BorderSide(color: Color(0xffa0a0a0))),
                              disabledBorder: InputBorder.none,
                              focusedBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xffa0a0a0))),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xffa0a0a0))),
                            ),
                            icon: const Icon(Icons.arrow_drop_down),
                            iconSize: 24,
                            elevation: 16,
                            style: const TextStyle(color: Colors.black),
                            isExpanded: true,
                            hint: const Center(child: Text("Select a payee")),
                            items: list.map((item) {
                              return DropdownMenuItem(
                                value: item.toString(),
                                child: Center(
                                  child: Text(item.toString()),
                                ),
                              );
                            }).toList(),
                            onChanged: (value) {},
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          const Row(
                            children: [
                              Text(
                                "Select category",
                                style: TextStyle(
                                    color: ExpenseColors.expenseLabels),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Wrap(
                            spacing: 5.0,
                            children: List<Widget>.generate(
                              3,
                              (int index) {
                                return ChoiceChip(
                                  showCheckmark: false,
                                  avatar: const Icon(
                                    Icons.info_outline,
                                    color: Color(0xff323236),
                                    size: 14,
                                  ),
                                  label: Text(
                                    'Item $index',
                                    style: const TextStyle(
                                        color: Color(0xff323236)),
                                  ),
                                  selected: _value == index,
                                  onSelected: (bool selected) {
                                    setState(() {
                                      _value = selected ? index : null;
                                    });
                                  },
                                );
                              },
                            ).toList(),
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            });
      },
      tooltip: 'Add new expense',
      shape: const CircleBorder(),
      elevation: 0,
      child: const Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }
}
