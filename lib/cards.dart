import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:wallet_ui/bottom_navbar.dart';
import 'package:wallet_ui/credit_card.dart';
import 'package:wallet_ui/theme_utils.dart';

class Cards extends StatefulWidget {
  Cards({Key key}) : super(key: key);

  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  ThemeUtils theme = new ThemeUtils();
  String selectedCardType = 'physical';
  bool viewCardBack = false;
  bool contactlessPayment = true;
  bool onlinePayment = false;
  bool atmWithdraws = true;
  int currentIndex = 0;
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
                      height: MediaQuery.of(context).size.height - 90,
                      decoration: BoxDecoration(
                          color: Color(0xfff1f1f1), borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))),
                      child: SingleChildScrollView(
                        child: Padding(
                            padding: const EdgeInsets.only(left: 32, right: 32, top: 25, bottom: 65),
                            child: Column(mainAxisSize: MainAxisSize.max, children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Your Cards', style: TextStyle(color: Color(0xff070d59), fontFamily: theme.poppinsBold, fontSize: 32)),
                                  Icon(Icons.more_horiz, color: Color.fromRGBO(98, 127, 158, 1), size: 44),
                                ],
                              ),
                              Row(children: [
                                Text('2 physical card, 1 virtual card',
                                    style: TextStyle(color: Color.fromRGBO(98, 127, 158, 1), fontFamily: theme.poppinsRegular, fontSize: 18)),
                              ]),
                              SizedBox(height: 25),
                              Row(children: [
                                InkWell(
                                  onTap: () {
                                    selectedCardType = 'physical';
                                    setState(() {});
                                  },
                                  child: Container(
                                    height: 35,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(25)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 15),
                                      child: Center(
                                          child: Opacity(
                                              opacity: selectedCardType == 'physical' ? 1 : 0.4,
                                              child: Text('Physical Card',
                                                  style: TextStyle(color: Color(0xff070d59), fontFamily: theme.poppinsSemibold, fontSize: 16)))),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                InkWell(
                                  onTap: () {
                                    selectedCardType = 'virtual';
                                    setState(() {});
                                  },
                                  child: Container(
                                    height: 35,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(25)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 15),
                                      child: Center(
                                          child: Opacity(
                                              opacity: selectedCardType == 'virtual' ? 1 : 0.4,
                                              child: Text('Virtual Card',
                                                  style: TextStyle(color: Color(0xff070d59), fontFamily: theme.poppinsSemibold, fontSize: 16)))),
                                    ),
                                  ),
                                ),
                              ]),
                              SizedBox(height: 25),
                              // Container(
                              //   height: 250,
                              //   child: ListView(
                              //     shrinkWrap: true,
                              //     scrollDirection: Axis.horizontal,
                              //     children: [
                              //     CreditCard(theme: theme),
                              //     CreditCard(theme: theme),
                              //     CreditCard(theme: theme),
                              //   ]),
                              // ),
                              Container(
                                height: 250,
                                child: ListView.separated(
                                    itemCount: 3,
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) => SizedBox(width: 25),
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return VisibilityDetector(
                                          key: Key('credit-card-key'),
                                          onVisibilityChanged: (visibilityInfo) {
                                            print(visibilityInfo.visibleFraction);
                                            if (visibilityInfo.visibleFraction > 0.4) {
                                              currentIndex = index;
                                              setState(() {});
                                            }
                                          },
                                          child: CreditCard(
                                            theme: theme,
                                            cardHolder: 'Jhon Doe',
                                            cardNumber: '****  ****  ****  5536',
                                            cvv: '234',
                                            expiry: '10/23',
                                            startColor: Color.fromRGBO(35, 60, 103, 1),
                                            endColor: Color.fromRGBO(35, 63, 111, 1), // red to yellow
                                          ));
                                    }),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [0, 1, 2].map((item) {
                                  return Container(
                                    width: 8.0,
                                    height: 8.0,
                                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: currentIndex == item ? Color.fromRGBO(0, 0, 0, 0.9) : Color.fromRGBO(0, 0, 0, 0.4),
                                    ),
                                  );
                                }).toList(),
                              ),
                              SizedBox(height: 25),
                              Row(
                                children: [
                                  Text('Card Settings', style: TextStyle(color: Color(0xff070d59), fontFamily: theme.poppinsBold, fontSize: 28))
                                ],
                              ),
                              SizedBox(height: 25),
                              Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.wifi_tethering_sharp, size: 30, color: Color(0xff1f3c88)),
                                      SizedBox(width: 15),
                                      Text('Contactless Payment',
                                          style: TextStyle(color: Color(0xff070d59), fontFamily: theme.poppinsRegular, fontSize: 20)),
                                      Spacer(),
                                      CupertinoSwitch(
                                        value: contactlessPayment,
                                        activeColor: Color.fromRGBO(35, 63, 111, 1),
                                        onChanged: (bool value) {
                                          setState(() {
                                            contactlessPayment = value;
                                          });
                                        },
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.phone_iphone_rounded, size: 30, color: Color(0xff1f3c88)),
                                      SizedBox(width: 15),
                                      Text('Online Payment',
                                          style: TextStyle(color: Color(0xff070d59), fontFamily: theme.poppinsRegular, fontSize: 20)),
                                      Spacer(),
                                      CupertinoSwitch(
                                        value: onlinePayment,
                                        activeColor: Color.fromRGBO(35, 63, 111, 1),
                                        onChanged: (bool value) {
                                          setState(() {
                                            onlinePayment = value;
                                          });
                                        },
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.atm_outlined, size: 30, color: Color(0xff1f3c88)),
                                      SizedBox(width: 15),
                                      Text('ATM Withdraws',
                                          style: TextStyle(color: Color(0xff070d59), fontFamily: theme.poppinsRegular, fontSize: 20)),
                                      Spacer(),
                                      CupertinoSwitch(
                                        value: atmWithdraws,
                                        activeColor: Color(0xff1f3c88),
                                        onChanged: (bool value) {
                                          setState(() {
                                            atmWithdraws = value;
                                          });
                                        },
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ])),
                      ))),
              BottomNavBar(theme: theme, index: 2)
            ]),
          )),
    ));
  }
}
