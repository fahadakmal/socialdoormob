import 'package:flutter/material.dart';
import 'package:socialdoormob/images.dart';
import 'package:socialdoormob/screens/signInScreen/widgets/signInButton.dart';
import 'package:socialdoormob/size_config.dart';
import 'package:socialdoormob/styling.dart';

class SignInScreen extends StatefulWidget {
  static const routeName = '/signInScreen';

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    print(SizeConfig.imageSizeMultiplier);
    return Scaffold(
      backgroundColor: AppTheme.appBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: SizeConfig.heightMultiplier * 20,
                vertical: SizeConfig.widthMultiplier * 20),
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(Logos.blueLogo),
              // child: Image(
              //   image: AssetImage(Logos.blueLogo),
              // ),
            ),
          ),
          Container(
            // height: SizeConfig.heightMultiplier*20,
          padding: EdgeInsets.only(top: SizeConfig.heightMultiplier*5,left:  SizeConfig.heightMultiplier*2.5,right:  SizeConfig.heightMultiplier*2.5),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            image: DecorationImage(
              image: AssetImage(Images.formBackground),
              fit: BoxFit.cover
            )
          ),
            child: Form(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 5),

                      fillColor: AppTheme.inputDecorationTheme.fillColor,
                      filled: true,
                      hintStyle: AppTheme.textFieldTextStyle,
                      border: AppTheme.outlinedBorder,
                      focusedBorder: AppTheme.outlinedBorder,
                      prefixIcon: Icon(Icons.email),
                      hintText: 'Email',
                    ),
                  ),
                  SizedBox(height: SizeConfig.heightMultiplier,),
                  TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 5),
                      fillColor: AppTheme.inputDecorationTheme.fillColor,
                      filled: true,
                      hintStyle: AppTheme.textFieldTextStyle,
                      border: AppTheme.outlinedBorder,
                      focusedBorder: AppTheme.outlinedBorder,
                      prefixIcon: Icon(Icons.vpn_key),
                      hintText: 'Password',
                    ),
                  ),
                  SizedBox(height: SizeConfig.heightMultiplier*5),

                  PlaceOrderButton(deviceHeight: SizeConfig.heightMultiplier, submit: (){}),
                  FlatButton(
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(18.0),
                    //     side: BorderSide(color: Colors.transparent)),
                    onPressed: () {},
                    // color: Colors.red,
                    textColor: Colors.white,
                    child: Text("Forget Password",
                        style: TextStyle(fontSize: 14)),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.amber
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

              ],
            ),
          )
        ],
      ),
    );
  }
}
