import 'package:flutter/material.dart';
import 'package:wallet_ui/cards.dart';
import 'package:wallet_ui/history.dart';
import 'package:wallet_ui/homepage.dart';
import 'package:wallet_ui/theme_utils.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key key, @required this.theme, @required this.index}) : super(key: key);

  final ThemeUtils theme;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        color: Color(0xfff1f1f1),
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
              },
              child: Opacity(
                opacity: index == 0 ? 1 : .3,
                child: Column(children: [
                  Container(width: 40, height: 40, child: Icon(Icons.home, size: 30, color: Color(0xff1f3c88))),
                  Text('Home', style: TextStyle(color: Color(0xff1f3c88), fontFamily: theme.poppinsSemibold, fontSize: 14))
                ]),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HistoryPage()));
              },
              child: Opacity(
                opacity: index == 1 ? 1 : .3,
                child: Column(children: [
                  Container(width: 40, height: 40, child: Icon(Icons.history, size: 30, color: Color(0xff1f3c88))),
                  Text('History', style: TextStyle(color: Color(0xff1f3c88), fontFamily: theme.poppinsSemibold, fontSize: 14))
                ]),
              ),
            ),
            Column(children: [
              SizedBox(height: 5),
              Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(color: Color(0xff1f3c88), borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Center(child: Text('+', style: TextStyle(color: Color(0xfff1f1f1), fontFamily: theme.poppinsRegular, fontSize: 25)))),
            ]),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Cards()));
              },
              child: Opacity(
                opacity: index == 2 ? 1 : .3,
                child: Column(children: [
                  Container(width: 40, height: 40, child: Icon(Icons.credit_card, size: 30, color: Color(0xff1f3c88))),
                  Text('Cards', style: TextStyle(color: Color(0xff1f3c88), fontFamily: theme.poppinsSemibold, fontSize: 14))
                ]),
              ),
            ),
            Opacity(
              opacity: 0.3,
              child: Column(children: [
                Container(width: 40, height: 40, child: Icon(Icons.person_outline, size: 30, color: Color(0xff1f3c88))),
                Text('Profile', style: TextStyle(color: Color(0xff1f3c88), fontFamily: theme.poppinsSemibold, fontSize: 14))
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
