import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet_ui/bottom_navbar.dart';
import 'package:wallet_ui/homepage.dart';
import 'package:wallet_ui/theme_utils.dart';
import 'package:wallet_ui/transaction_details_widget.dart';

class HistoryPage extends StatefulWidget {
  HistoryPage({Key key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  ThemeUtils theme = new ThemeUtils();
  dynamic expenseData = [
    {
      'today': [
        {
          'name': 'Cafe',
          'image': Icons.emoji_food_beverage_outlined,
          'amount': 50.68,
          'isSpend': true,
          'date': 'Aug 26',
          'expenseDetail': 'Eatly downtown'
        },
        {
          'name': 'Transport',
          'image': Icons.car_repair,
          'amount': 15.23,
          'isSpend': true,
          'date': 'Aug 26',
          'expenseDetail': 'Uber pool',
        }
      ]
    },
    {
      'yesterday': [
        {
          'name': 'Payment',
          'image': Icons.credit_card,
          'amount': 500.00,
          'isSpend': false,
          'date': 'Aug 25',
          'expenseDetail': 'Payment from',
          'transferBy': 'Andre'
        }
      ]
    },
    {
      'aug 24': [
        {
          'name': 'Transport',
          'image': Icons.car_repair,
          'amount': 59.52,
          'isSpend': true,
          'date': 'Aug 24',
          'expenseDetail': 'Uber pool',
        },
        {
          'name': 'Dine',
          'image': Icons.emoji_food_beverage_outlined,
          'amount': 47.52,
          'isSpend': true,
          'date': 'Aug 24',
          'expenseDetail': 'Subway',
        }
      ]
    },
    {
      'aug 23': [
        {
          'name': 'Payment',
          'image': Icons.credit_card,
          'amount': 500.00,
          'isSpend': false,
          'date': 'Aug 23',
          'expenseDetail': 'Payment from',
          'transferBy': 'Andre'
        }
      ]
    },
    {
      'aug 22': [
        {
          'name': 'Payment',
          'image': Icons.credit_card,
          'amount': 1500.00,
          'isSpend': false,
          'date': 'Aug 22',
          'expenseDetail': 'Payment from',
          'transferBy': 'Harvey'
        }
      ]
    },
    {
      'aug 21': [
        {
          'name': 'Cafe',
          'image': Icons.emoji_food_beverage_outlined,
          'amount': 50.68,
          'isSpend': true,
          'date': 'Aug 21',
          'expenseDetail': 'Eatly downtown'
        },
        {
          'name': 'Transport',
          'image': Icons.car_repair,
          'amount': 15.23,
          'isSpend': true,
          'date': 'Aug 21',
          'expenseDetail': 'Uber pool',
        }
      ]
    },
    {
      'aug 20': [
        {
          'name': 'Payment',
          'image': Icons.credit_card,
          'amount': 500.00,
          'isSpend': false,
          'date': 'Aug 20',
          'expenseDetail': 'Payment from',
          'transferBy': 'Andre'
        }
      ]
    },
    {
      'aug 19': [
        {
          'name': 'Transport',
          'image': Icons.car_repair,
          'amount': 59.52,
          'isSpend': true,
          'date': 'Aug 19',
          'expenseDetail': 'Uber pool',
        },
        {
          'name': 'Dine',
          'image': Icons.emoji_food_beverage_outlined,
          'amount': 47.52,
          'isSpend': true,
          'date': 'Aug 19',
          'expenseDetail': 'Subway',
        }
      ]
    },
    {
      'aug 18': [
        {
          'name': 'Payment',
          'image': Icons.credit_card,
          'amount': 500.00,
          'isSpend': false,
          'date': 'Aug 18',
          'expenseDetail': 'Payment from',
          'transferBy': 'Andre'
        }
      ]
    },
    {
      'aug 17': [
        {
          'name': 'Payment',
          'image': Icons.credit_card,
          'amount': 1500.00,
          'isSpend': false,
          'date': 'Aug 17',
          'expenseDetail': 'Payment from',
          'transferBy': 'Harvey'
        }
      ]
    }
  ];

  String selectedFilter;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.4, 0.0), // 10% of the width, so there are ten blinds.
              // stops: [0.2, 0.4, 0.6, 0.8],
              // colors: [Color(0xff234F9D), Color(0xff1F4F9D), Color(0xff395CA4), Color(0xff4566A9)], // red to yellow
              colors: [Color(0xff070d59), Color(0xff1f3c88)], // red to yellow
              // #234F9D, #1F4F9D, #395CA4, #4566A9
              // tileMode: TileMode.repeated, // repeats the gradient over the canvas
            ),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Stack(children: [
              Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                      // color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                          color: Color(0xfff1f1f1), borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))),
                      child: SingleChildScrollView(
                        child: Padding(
                            padding: const EdgeInsets.only(left: 32, right: 32, top: 25, bottom: 65),
                            child: Column(mainAxisSize: MainAxisSize.max, children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('History', style: TextStyle(color: Color(0xff070d59), fontFamily: theme.poppinsSemibold, fontSize: 24)),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(children: [
                                InkWell(
                                  onTap: () {
                                    selectedFilter = null;
                                    setState(() {});
                                  },
                                  child: Container(
                                    height: 35,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(25)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 15),
                                      child: Center(
                                          child: Opacity(
                                              opacity: selectedFilter == null ? 1 : 0.4,
                                              child: Text('All',
                                                  style: TextStyle(color: Color(0xff070d59), fontFamily: theme.poppinsSemibold, fontSize: 16)))),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                InkWell(
                                  onTap: () {
                                    selectedFilter = 'income';
                                    setState(() {});
                                  },
                                  child: Container(
                                    height: 35,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(25)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 15),
                                      child: Center(
                                          child: Opacity(
                                        opacity: selectedFilter != null && selectedFilter == 'income' ? 1 : 0.4,
                                        child: Row(
                                          children: [
                                            Stack(
                                              children: [
                                                Positioned.fill(
                                                  child: Container(
                                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.greenAccent),
                                                    margin: EdgeInsets.all(3), // Modify this till it fills the color properly
                                                  ),
                                                ),
                                                Icon(Icons.arrow_circle_down_outlined, color: Colors.white)
                                              ],
                                            ),
                                            SizedBox(width: 5),
                                            Text('Income',
                                                style: TextStyle(color: Color(0xff070d59), fontFamily: theme.poppinsSemibold, fontSize: 16)),
                                          ],
                                        ),
                                      )),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                InkWell(
                                  onTap: () {
                                    selectedFilter = 'expense';
                                    setState(() {});
                                  },
                                  child: Container(
                                    height: 35,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(25)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 15),
                                      child: Center(
                                          child: Opacity(
                                        opacity: selectedFilter != null && selectedFilter == 'expense' ? 1 : 0.4,
                                        child: Row(
                                          children: [
                                            Stack(
                                              children: [
                                                Positioned.fill(
                                                  child: Container(
                                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.redAccent),
                                                    margin: EdgeInsets.all(3), // Modify this till it fills the color properly
                                                  ),
                                                ),
                                                Icon(Icons.arrow_circle_up_outlined, color: Colors.white)
                                              ],
                                            ),
                                            SizedBox(width: 5),
                                            Text('Expense',
                                                style: TextStyle(color: Color(0xff070d59), fontFamily: theme.poppinsSemibold, fontSize: 16)),
                                          ],
                                        ),
                                      )),
                                    ),
                                  ),
                                ),
                              ]),
                              ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: expenseData.length,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    return Column(children: [
                                      SizedBox(height: 10),
                                      Row(children: [
                                        Text(expenseData[index].keys.toList()[0].toString().toUpperCase(),
                                            style: TextStyle(color: Colors.blueGrey[200], fontFamily: theme.poppinsBold, fontSize: 16)),
                                      ]),
                                      SizedBox(height: 10),
                                      Container(
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white),
                                        child: ListView.separated(
                                            shrinkWrap: true,
                                            separatorBuilder: (context, index) => Divider(height: 0, color: Color(0xfff1f1f1)),
                                            itemCount: expenseData[index][expenseData[index].keys.toList()[0]].length,
                                            physics: NeverScrollableScrollPhysics(),
                                            itemBuilder: (context, itemIndex) {
                                              return selectedFilter == null ||
                                                      selectedFilter != null &&
                                                          selectedFilter == 'income' &&
                                                          !expenseData[index][expenseData[index].keys.toList()[0]][itemIndex]['isSpend'] ||
                                                      selectedFilter != null &&
                                                          selectedFilter == 'expense' &&
                                                          expenseData[index][expenseData[index].keys.toList()[0]][itemIndex]['isSpend']
                                                  ? Padding(
                                                      padding: const EdgeInsets.symmetric(vertical: 16),
                                                      child: TransactionDetails(
                                                          theme: theme,
                                                          name: expenseData[index][expenseData[index].keys.toList()[0]][itemIndex]['name'],
                                                          image: expenseData[index][expenseData[index].keys.toList()[0]][itemIndex]['image'],
                                                          amount: expenseData[index][expenseData[index].keys.toList()[0]][itemIndex]['amount'],
                                                          isSpend: expenseData[index][expenseData[index].keys.toList()[0]][itemIndex]['isSpend'],
                                                          date: expenseData[index][expenseData[index].keys.toList()[0]][itemIndex]['date'],
                                                          transferBy: expenseData[index][expenseData[index].keys.toList()[0]][itemIndex]
                                                              ['transferBy'],
                                                          expenseDetail: expenseData[index][expenseData[index].keys.toList()[0]][itemIndex]
                                                              ['expenseDetail']),
                                                    )
                                                  : Container();
                                            }),
                                      ),
                                    ]);
                                  }),
                              SizedBox(height: 20)
                            ])),
                      ))),
              BottomNavBar(theme: theme, index: 1)
            ]),
          )),
    ));
  }
}
