import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet_ui/homepage.dart';
import 'package:wallet_ui/theme_utils.dart';

class HistoryPage extends StatefulWidget {
  HistoryPage({Key key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
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
                                                child: Icon(index == 0 ? Icons.emoji_food_beverage_outlined : Icons.car_repair,
                                                    size: 30, color: Color(0xff1f3c88))),
                                            SizedBox(width: 10),
                                            Expanded(
                                                child: Column(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                    Text(index == 0 ? 'Cafe' : 'Transport',
                                                        style: TextStyle(
                                                            color: Color(0xff070d59),
                                                            fontFamily: theme.poppinsSemibold,
                                                            fontSize: 18,
                                                            fontWeight: FontWeight.w700)),
                                                    Text(index == 0 ? '- \$50.68' : '- \$15.23',
                                                        style: TextStyle(
                                                            color: Color(0xff070d59),
                                                            fontFamily: theme.poppinsSemibold,
                                                            fontSize: 18,
                                                            fontWeight: FontWeight.w700)),
                                                  ]),
                                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                    Text(index == 0 ? 'Eataly downtown' : 'Uber pool',
                                                        style: TextStyle(
                                                            color: Color(0x99070d59),
                                                            fontFamily: theme.poppinsRegular,
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w300)),
                                                    Text('Aug 26',
                                                        style: TextStyle(
                                                            color: Color(0x99070d59),
                                                            fontFamily: theme.poppinsRegular,
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w300)),
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
                                                child: Column(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                    Text('Payment',
                                                        style: TextStyle(
                                                            color: Color(0xff070d59),
                                                            fontFamily: theme.poppinsSemibold,
                                                            fontSize: 18,
                                                            fontWeight: FontWeight.w700)),
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
                                                            color: Color(0x99070d59),
                                                            fontFamily: theme.poppinsRegular,
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w300)),
                                                  ])
                                                ]))
                                          ]),
                                        );
                                      }),
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(children: [
                                Text('Aug 24', style: TextStyle(color: Colors.blueGrey[200], fontFamily: theme.poppinsBold, fontSize: 16)),
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
                                                child: Icon(index == 0 ? Icons.emoji_food_beverage_outlined : Icons.car_repair,
                                                    size: 30, color: Color(0xff1f3c88))),
                                            SizedBox(width: 10),
                                            Expanded(
                                                child: Column(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                    Text(index == 0 ? 'Dine' : 'Transport',
                                                        style: TextStyle(
                                                            color: Color(0xff070d59),
                                                            fontFamily: theme.poppinsSemibold,
                                                            fontSize: 18,
                                                            fontWeight: FontWeight.w700)),
                                                    Text(index == 0 ? '- \$34.56' : '- \$15.23',
                                                        style: TextStyle(
                                                            color: Color(0xff070d59),
                                                            fontFamily: theme.poppinsSemibold,
                                                            fontSize: 18,
                                                            fontWeight: FontWeight.w700)),
                                                  ]),
                                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                    Text(index == 0 ? 'Subway' : 'Uber pool',
                                                        style: TextStyle(
                                                            color: Color(0x99070d59),
                                                            fontFamily: theme.poppinsRegular,
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w300)),
                                                    Text('Aug 24',
                                                        style: TextStyle(
                                                            color: Color(0x99070d59),
                                                            fontFamily: theme.poppinsRegular,
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w300)),
                                                  ])
                                                ]))
                                          ]),
                                        );
                                      }),
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(children: [
                                Text('Aug 23', style: TextStyle(color: Colors.blueGrey[200], fontFamily: theme.poppinsBold, fontSize: 16)),
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
                                                child: Column(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                    Text('Payment',
                                                        style: TextStyle(
                                                            color: Color(0xff070d59),
                                                            fontFamily: theme.poppinsSemibold,
                                                            fontSize: 18,
                                                            fontWeight: FontWeight.w700)),
                                                    Text('+ \$150.00',
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
                                                        Text('Simon',
                                                            style: TextStyle(
                                                                color: Color(0x99070d59),
                                                                fontFamily: theme.poppinsRegular,
                                                                fontSize: 14,
                                                                fontWeight: FontWeight.w600)),
                                                      ],
                                                    ),
                                                    Text('Aug 23',
                                                        style: TextStyle(
                                                            color: Color(0x99070d59),
                                                            fontFamily: theme.poppinsRegular,
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w300)),
                                                  ])
                                                ]))
                                          ]),
                                        );
                                      }),
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(children: [
                                Text('Aug 22', style: TextStyle(color: Colors.blueGrey[200], fontFamily: theme.poppinsBold, fontSize: 16)),
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
                                                child: Column(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                    Text('Payment',
                                                        style: TextStyle(
                                                            color: Color(0xff070d59),
                                                            fontFamily: theme.poppinsSemibold,
                                                            fontSize: 18,
                                                            fontWeight: FontWeight.w700)),
                                                    Text('+ \$1500.00',
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
                                                        Text('Harvey',
                                                            style: TextStyle(
                                                                color: Color(0x99070d59),
                                                                fontFamily: theme.poppinsRegular,
                                                                fontSize: 14,
                                                                fontWeight: FontWeight.w600)),
                                                      ],
                                                    ),
                                                    Text('Aug 22',
                                                        style: TextStyle(
                                                            color: Color(0x99070d59),
                                                            fontFamily: theme.poppinsRegular,
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w300)),
                                                  ])
                                                ]))
                                          ]),
                                        );
                                      }),
                                ),
                              ),
                              SizedBox(height: 10)
                            ])),
                      ))),
              Positioned(
                bottom: 0,
                child: Container(
                  color: Color(0xfff1f1f1),
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                        },
                        child: Opacity(
                          opacity: 0.3,
                          child: Column(children: [
                            Container(width: 30, height: 30, child: Icon(Icons.home, size: 25, color: Color(0xff1f3c88))),
                            Text('Home', style: TextStyle(color: Color(0xff1f3c88), fontFamily: theme.poppinsSemibold, fontSize: 14))
                          ]),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HistoryPage()));
                        },
                        child: Column(children: [
                          Container(width: 30, height: 30, child: Icon(Icons.history, size: 25, color: Color(0xff1f3c88))),
                          Text('History', style: TextStyle(color: Color(0xff1f3c88), fontFamily: theme.poppinsSemibold, fontSize: 14))
                        ]),
                      ),
                      Column(children: [
                        Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(color: Color(0xff1f3c88), borderRadius: BorderRadius.all(Radius.circular(12))),
                            child:
                                Center(child: Text('+', style: TextStyle(color: Color(0xfff1f1f1), fontFamily: theme.poppinsRegular, fontSize: 25)))),
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
          )),
    ));
  }
}
