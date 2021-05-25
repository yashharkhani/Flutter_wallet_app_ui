import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet_ui/bottom_navbar.dart';
import 'package:wallet_ui/history.dart';
import 'package:wallet_ui/theme_utils.dart';
import 'package:wallet_ui/transaction_details_widget.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ThemeUtils theme = new ThemeUtils();
  String selectedFilter;
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
    }
  ];

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
            stops: [0.2, 0.7],
            // colors: [Color(0xff234F9D), Color(0xff1F4F9D), Color(0xff395CA4), Color(0xff4566A9)], // red to yellow
            colors: [Color(0xff070d59), Color(0xff1f3c88)], // red to yellow
            // #234F9D, #1F4F9D, #395CA4, #4566A9
            // tileMode: TileMode.repeated, // repeats the gradient over the canvas
          ),
        ),
        child: Stack(children: [
          //top panel
          Container(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, children: [
                  Text("\$2,589.60",
                      style: TextStyle(color: Colors.white, fontSize: 32, fontFamily: theme.poppinsSemibold, fontWeight: FontWeight.w500)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.notifications, color: Colors.white, size: 26),
                      SizedBox(width: 15),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.white, width: 2),
                          image: DecorationImage(
                            image: NetworkImage('https://cdn.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png'),
                          ),
                        ),
                        // child: Padding(
                        //   padding: const EdgeInsets.all(2.0),
                        //   child: Image.network(
                        //     'https://s3.amazonaws.com/uifaces/faces/twitter/jehnglynn/128.jpg',
                        //   ),
                        // )
                      )
                    ],
                  ),
                ]),
                Row(children: [Text('Available Balance', style: TextStyle(color: Colors.grey, fontFamily: theme.poppinsMedium, fontSize: 14))]),
                SizedBox(height: 20),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Column(children: [
                    Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white),
                        child: Icon(Icons.wallet_giftcard, size: 30, color: Color(0xff1f3c88))),
                    SizedBox(height: 5),
                    Text('Send', style: TextStyle(color: Colors.grey, fontFamily: theme.poppinsMedium, fontSize: 14))
                  ]),
                  Column(children: [
                    Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white),
                        child: Icon(Icons.wallet_membership, size: 30, color: Color(0xff1f3c88))),
                    SizedBox(height: 5),
                    Text('Request', style: TextStyle(color: Colors.grey, fontFamily: theme.poppinsMedium, fontSize: 14))
                  ]),
                  Column(children: [
                    Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white),
                        child: Icon(Icons.attach_money, size: 30, color: Color(0xff1f3c88))),
                    SizedBox(height: 5),
                    Text('Loan', style: TextStyle(color: Colors.grey, fontFamily: theme.poppinsMedium, fontSize: 14))
                  ]),
                  Column(children: [
                    Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white),
                        child: Icon(Icons.wallet_travel, size: 30, color: Color(0xff1f3c88))),
                    SizedBox(height: 5),
                    Text('Topup', style: TextStyle(color: Colors.grey, fontFamily: theme.poppinsMedium, fontSize: 14))
                  ]),
                ])
              ],
            ),
          )),
          Padding(
            padding: const EdgeInsets.only(top: 210),
            child: Container(
              // color: Colors.white,
              decoration: BoxDecoration(
                  color: Color(0xfff1f1f1), borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 25),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Recent Transactions', style: TextStyle(color: Color(0xff070d59), fontFamily: theme.poppinsSemibold, fontSize: 24)),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HistoryPage()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text('See all', style: TextStyle(color: Color(0xCC070d59), fontFamily: theme.poppinsSemibold, fontSize: 16)),
                        ),
                      )
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
                                  child: Text('All', style: TextStyle(color: Color(0xff070d59), fontFamily: theme.poppinsSemibold, fontSize: 16)))),
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
                                Text('Income', style: TextStyle(color: Color(0xff070d59), fontFamily: theme.poppinsSemibold, fontSize: 16)),
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
                                Text('Expense', style: TextStyle(color: Color(0xff070d59), fontFamily: theme.poppinsSemibold, fontSize: 16)),
                              ],
                            ),
                          )),
                        ),
                      ),
                    ),
                  ]),
                  Container(
                    height: MediaQuery.of(context).size.height - 400,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: expenseData.length,
                        // physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Column(children: [
                            SizedBox(height: 10),
                            Row(children: [
                              Text(expenseData[index].keys.toList()[0].toString(),
                                  style: TextStyle(color: Colors.blueGrey[200], fontFamily: theme.poppinsBold, fontSize: 16)),
                            ]),
                            SizedBox(height: 10),
                            Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white),
                              child: ListView.separated(
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) => Divider(height: 1),
                                  itemCount: expenseData[index][expenseData[index].keys.toList()[0]].length,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, itemIndex) {
                                    return selectedFilter == null ||
                                            selectedFilter != null &&
                                                selectedFilter == 'income' &&
                                                !expenseData[index][expenseData[index].keys.toList()[0]][itemIndex]['isSpend']||
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
                                                transferBy: expenseData[index][expenseData[index].keys.toList()[0]][itemIndex]['transferBy'],
                                                expenseDetail: expenseData[index][expenseData[index].keys.toList()[0]][itemIndex]['expenseDetail']),
                                          )
                                        : Container();
                                  }),
                            ),
                          ]);
                        }),
                  ),
                ]),
              ),
            ),
          ),
          BottomNavBar(theme: theme, index: 0)
        ]),
      ),
    ));
  }
}
