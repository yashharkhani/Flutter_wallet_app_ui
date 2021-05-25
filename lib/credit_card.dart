import 'package:flutter/material.dart';
import 'package:wallet_ui/theme_utils.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({
    Key key,
    @required this.theme,
    @required this.cardNumber,
    @required this.cardHolder,
    @required this.expiry,
    @required this.cvv,
    @required this.startColor,
    @required this.endColor,
  }) : super(key: key);

  final ThemeUtils theme;
  final String cardNumber;
  final String cardHolder;
  final String expiry;
  final String cvv;
  final Color startColor;
  final Color endColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        height: 250,
        width: MediaQuery.of(context).size.width - 64,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.4, 0.0),
            stops: [0.9, 0.9],
            colors: [startColor, endColor], // red to yellow
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [Image.asset('assets/mastercard.png', width: 50)]),
            Row(children: [Text(cardNumber, style: TextStyle(color: Colors.white, fontFamily: theme.poppinsSemibold, fontSize: 24))]),
            Spacer(),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text('CARD HOLDER', style: TextStyle(color: Color.fromRGBO(105, 123, 152, 1), fontFamily: theme.poppinsSemibold, fontSize: 16)),
                SizedBox(height: 8),
                Text(cardHolder, style: TextStyle(color: Colors.white, fontFamily: theme.poppinsSemibold, fontSize: 22))
              ]),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text('EXPIRES', style: TextStyle(color: Color.fromRGBO(105, 123, 152, 1), fontFamily: theme.poppinsSemibold, fontSize: 16)),
                SizedBox(height: 8),
                Text(expiry, style: TextStyle(color: Colors.white, fontFamily: theme.poppinsSemibold, fontSize: 22))
              ]),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text('CVV', style: TextStyle(color: Color.fromRGBO(105, 123, 152, 1), fontFamily: theme.poppinsSemibold, fontSize: 16)),
                SizedBox(height: 8),
                Text(cvv, style: TextStyle(color: Colors.white, fontFamily: theme.poppinsSemibold, fontSize: 22))
              ])
            ]),
          ]),
        ),
      ),
    );
  }
}
