import 'package:flutter/material.dart';
import 'package:socialdoormob/styling.dart';
class PlaceOrderButton extends StatelessWidget {
  const PlaceOrderButton({
    Key key,
    @required this.deviceHeight,
    @required this.submit,
  }) : super(key: key);

  final double deviceHeight;
  final Function submit;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(left: 20, right: 20),
      // margin: EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: deviceHeight*6,
            child:      RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(90.0),
                  side: BorderSide(color: AppTheme.borderColor)),
              onPressed: submit,
              color: AppTheme.buttonColor,
              textColor: Colors.white,
              child: Text("Sign In".toUpperCase(),
                  style: TextStyle(fontSize: 18)),
            ),
          ),
        ],
      ),
    );
  }
}