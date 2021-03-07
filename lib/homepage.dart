import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet_ui/history.dart';
import 'package:wallet_ui/theme_utils.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ThemeUtils theme = new ThemeUtils();

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
                            image: NetworkImage('https://s3.amazonaws.com/uifaces/faces/twitter/ahmetalpbalkan/128.jpg'),
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
                      GestureDetector(
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
                    Container(
                      height: 35,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child:
                            Center(child: Text('All', style: TextStyle(color: Color(0xff070d59), fontFamily: theme.poppinsSemibold, fontSize: 16))),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 35,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Center(
                            child: Opacity(
                          opacity: 0.4,
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
                              Text('Income', style: TextStyle(color: Color(0xff070d59), fontFamily: theme.poppinsRegular, fontSize: 16)),
                            ],
                          ),
                        )),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 35,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Center(
                            child: Opacity(
                          opacity: 0.4,
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
                              Text('Expense', style: TextStyle(color: Color(0xff070d59), fontFamily: theme.poppinsRegular, fontSize: 16)),
                            ],
                          ),
                        )),
                      ),
                    ),
                  ]),
                  SizedBox(height: 10),
                  Row(children: [
                    Text('TODAY', style: TextStyle(color: Colors.blueGrey[200], fontFamily: theme.poppinsBold, fontSize: 16)),
                  ]),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: ListView.separated(
                          shrinkWrap: true,
                          separatorBuilder: (context, index) => Divider(),
                          itemCount: 2,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(children: [
                                Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Color(0xfff1f1f1)),
                                    child:
                                        Icon(index == 0 ? Icons.emoji_food_beverage_outlined : Icons.car_repair, size: 30, color: Color(0xff1f3c88))),
                                SizedBox(width: 10),
                                Expanded(
                                    child: Column(mainAxisSize: MainAxisSize.max, mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                    Text(index == 0 ? 'Cafe' : 'Transport',
                                        style: TextStyle(
                                            color: Color(0xff070d59), fontFamily: theme.poppinsSemibold, fontSize: 18, fontWeight: FontWeight.w700)),
                                    Text(index == 0 ? '- \$50.68' : '- \$15.23',
                                        style: TextStyle(
                                            color: Color(0xff070d59), fontFamily: theme.poppinsSemibold, fontSize: 18, fontWeight: FontWeight.w700)),
                                  ]),
                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                    Text(index == 0 ? 'Eataly downtown' : 'Uber pool',
                                        style: TextStyle(
                                            color: Color(0x99070d59), fontFamily: theme.poppinsRegular, fontSize: 14, fontWeight: FontWeight.w300)),
                                    Text('Aug 26',
                                        style: TextStyle(
                                            color: Color(0x99070d59), fontFamily: theme.poppinsRegular, fontSize: 14, fontWeight: FontWeight.w300)),
                                  ])
                                ]))
                              ]),
                            );
                          }),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(children: [
                    Text('YESTERDAY', style: TextStyle(color: Colors.blueGrey[200], fontFamily: theme.poppinsBold, fontSize: 16)),
                  ]),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: ListView.separated(
                          shrinkWrap: true,
                          separatorBuilder: (context, index) => Divider(),
                          itemCount: 1,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(children: [
                                Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Color(0xfff1f1f1)),
                                    child: Icon(Icons.credit_card, size: 30, color: Color(0xff1f3c88))),
                                SizedBox(width: 10),
                                Expanded(
                                    child: Column(mainAxisSize: MainAxisSize.max, mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                    Text('Payment',
                                        style: TextStyle(
                                            color: Color(0xff070d59), fontFamily: theme.poppinsSemibold, fontSize: 18, fontWeight: FontWeight.w700)),
                                    Text('+ \$500.00',
                                        style: TextStyle(
                                            color: Colors.greenAccent[700],
                                            fontFamily: theme.poppinsSemibold,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700)),
                                  ]),
                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                    Row(
                                      children: [
                                        Text('Payment from ',
                                            style: TextStyle(
                                                color: Color(0x99070d59),
                                                fontFamily: theme.poppinsRegular,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300)),
                                        Text('Andre',
                                            style: TextStyle(
                                                color: Color(0x99070d59),
                                                fontFamily: theme.poppinsRegular,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600)),
                                      ],
                                    ),
                                    Text('Aug 25',
                                        style: TextStyle(
                                            color: Color(0x99070d59), fontFamily: theme.poppinsRegular, fontSize: 14, fontWeight: FontWeight.w300)),
                                  ])
                                ]))
                              ]),
                            );
                          }),
                    ),
                  )
                ]),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Column(children: [
                      Container(width: 30, height: 30, child: Icon(Icons.home, size: 25, color: Color(0xff1f3c88))),
                      Text('Home', style: TextStyle(color: Color(0xff1f3c88), fontFamily: theme.poppinsSemibold, fontSize: 14))
                    ]),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HistoryPage()));
                    },
                    child: Opacity(
                      opacity: 0.3,
                      child: Column(children: [
                        Container(width: 30, height: 30, child: Icon(Icons.history, size: 25, color: Color(0xff1f3c88))),
                        Text('History', style: TextStyle(color: Color(0xff1f3c88), fontFamily: theme.poppinsSemibold, fontSize: 14))
                      ]),
                    ),
                  ),
                  Column(children: [
                    Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(color: Color(0xff1f3c88), borderRadius: BorderRadius.all(Radius.circular(12))),
                        child: Center(child: Text('+', style: TextStyle(color: Color(0xfff1f1f1), fontFamily: theme.poppinsRegular, fontSize: 25)))),
                  ]),
                  Opacity(
                    opacity: 0.3,
                    child: Column(children: [
                      Container(width: 30, height: 30, child: Icon(Icons.credit_card, size: 25, color: Color(0xff1f3c88))),
                      Text('Cards', style: TextStyle(color: Color(0xff1f3c88), fontFamily: theme.poppinsSemibold, fontSize: 14))
                    ]),
                  ),
                  Opacity(
                    opacity: 0.3,
                    child: Column(children: [
                      Container(width: 30, height: 30, child: Icon(Icons.person_outline, size: 25, color: Color(0xff1f3c88))),
                      Text('Profile', style: TextStyle(color: Color(0xff1f3c88), fontFamily: theme.poppinsSemibold, fontSize: 14))
                    ]),
                  ),
                ]),
              ),
            ),
          )
        ]),
      ),
    ));
  }
}
