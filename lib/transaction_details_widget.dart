import 'package:flutter/material.dart';
import 'package:wallet_ui/theme_utils.dart';

class TransactionDetails extends StatelessWidget {
  const TransactionDetails({
    Key key,
    @required this.theme,
    @required this.image,
    @required this.name,
    @required this.expenseDetail,
    @required this.date,
    @required this.amount,
    @required this.transferBy,
    @required this.isSpend,
  }) : super(key: key);

  final ThemeUtils theme;
  final IconData image;
  final String name;
  final String expenseDetail;
  final double amount;
  final String date;
  final String transferBy;
  final bool isSpend;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(children: [
        Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Color(0xfff1f1f1)),
            child: Icon(image, size: 30, color: Color(0xff1f3c88))),
        SizedBox(width: 10),
        Expanded(
            child: Column(mainAxisSize: MainAxisSize.max, mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(name, style: TextStyle(color: Color(0xff070d59), fontFamily: theme.poppinsSemibold, fontSize: 18, fontWeight: FontWeight.w700)),
            Text((isSpend ? '- \$' : '+ \$') + amount.toStringAsFixed(2),
                style: TextStyle(
                    color: isSpend ? Color(0xff070d59) : Colors.greenAccent[700],
                    fontFamily: theme.poppinsSemibold,
                    fontSize: 18,
                    fontWeight: FontWeight.w700)),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                Text(expenseDetail,
                    style: TextStyle(color: Color(0x99070d59), fontFamily: theme.poppinsRegular, fontSize: 14, fontWeight: FontWeight.w300)),
                if (transferBy != null)
                  Text(' ' + transferBy,
                      style: TextStyle(color: Color(0x99070d59), fontFamily: theme.poppinsRegular, fontSize: 14, fontWeight: FontWeight.w600))
              ],
            ),
            Text(date, style: TextStyle(color: Color(0x99070d59), fontFamily: theme.poppinsRegular, fontSize: 14, fontWeight: FontWeight.w300)),
          ])
        ]))
      ]),
    );
  }
}
