import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MoneyInputUI extends StatefulWidget {
  const MoneyInputUI({super.key});

  @override
  State<MoneyInputUI> createState() => _MoneyInputUIState();
}

class _MoneyInputUIState extends State<MoneyInputUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('ขอเงินหน่อย', style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.only(left: 45.0, right: 45.0),
        child: Center(
          child: Column(children: [
            SizedBox(
              height: 50.0,
            ),
            Image.asset('assets/images/money.png',
                width: MediaQuery.of(context).size.width * 0.035),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.purple,
                  ),
                ),
                prefixIcon: Icon(
                  FontAwesomeIcons.moneyBillWave,
                  color: Colors.purple,
                ),
                hintText: 'จํานวนเงิน',
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            )
          ]),
        ),
      )),
    );
  }
}
