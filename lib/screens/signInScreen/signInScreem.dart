import 'package:flutter/material.dart';
import 'package:socialdoormob/images.dart';
import 'package:socialdoormob/screens/signInScreen/widgets/signInButton.dart';
import 'package:socialdoormob/size_config.dart';
import 'package:socialdoormob/styling.dart';
import 'package:flutter/gestures.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInScreen extends StatefulWidget {
  static const routeName = '/signInScreen';

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextStyle defaultStyle = TextStyle(color: Colors.grey, fontSize: 20.0);
  TextStyle linkStyle = TextStyle(color: Colors.blue);

  @override
  Widget build(BuildContext context) {
    print(SizeConfig.imageSizeMultiplier);
    return Scaffold(
      backgroundColor: AppTheme.appBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                top: SizeConfig.heightMultiplier * 5,
                  bottom: SizeConfig.heightMultiplier * 10,
              right: SizeConfig.heightMultiplier * 20,
              left: SizeConfig.heightMultiplier * 20,
              ),
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(Logos.blueLogo),
                // child: Image(
                //   image: AssetImage(Logos.blueLogo),
                // ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: SizeConfig.heightMultiplier*2),
              child: Center(
                child: Text('Sign Up',
                    style: TextStyle(
                      fontFamily: 'NotoSansJP-Regular',
                      color: Colors.white,
                      fontSize: 23,
                      letterSpacing: -0.64,
                      height: 1.2000000476837158,
                    )),
              ),
            ),
            Container(
              // height: SizeConfig.heightMultiplier*20,
              padding: EdgeInsets.only(
                  top: SizeConfig.heightMultiplier * 5,
                  left: SizeConfig.heightMultiplier * 2.5,
                  right: SizeConfig.heightMultiplier * 2.5),
              margin: EdgeInsets.only(
                  bottom: SizeConfig.heightMultiplier * 15,
                  left: SizeConfig.widthMultiplier * 6,
                  right: SizeConfig.widthMultiplier * 6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                      image: AssetImage(Images.formBackground),
                      fit: BoxFit.cover)),
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
                    SizedBox(
                      height: SizeConfig.heightMultiplier,
                    ),
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
                    SizedBox(height: SizeConfig.heightMultiplier * 5),
                    PlaceOrderButton(
                        deviceHeight: SizeConfig.heightMultiplier, submit: () {}),
                    FlatButton(
                      // shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(18.0),
                      //     side: BorderSide(color: Colors.transparent)),
                      onPressed: () {},
                      // color: Colors.red,
                      textColor: Colors.white,
                      child:
                          Text("Forget Password", style: TextStyle(fontSize: 14)),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // height: 200,
              // width: 200,
              decoration: BoxDecoration(
                  // color: Colors.amber
                  ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Text(
                      'Sign IN with',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: SizeConfig.heightMultiplier*2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[

                        CircleAvatar(
                          backgroundColor: const Color(0xffefefef),
                          // foregroundColor: Colors.blue,
                          child: IconButton(icon: FaIcon(FontAwesomeIcons.google),
                            color: Colors.grey,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: const Color(0xffefefef),
                          child: IconButton(
                              icon: FaIcon(FontAwesomeIcons.facebook),
                              color: Colors.grey,
                              onPressed: () {
                                print("Pressed");
                              }),
                        ),
                        CircleAvatar(
                          backgroundColor: const Color(0xffefefef),
                          child: IconButton(
                              icon: FaIcon(FontAwesomeIcons.twitter),
                              color: Colors.grey,
                              onPressed: () {
                                print("Pressed");
                              }),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: SizeConfig.heightMultiplier*2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: defaultStyle,
                            children: <TextSpan>[
                              TextSpan(text: 'Did not have an account '),
                              TextSpan(
                                  text: 'Register',
                                  style: linkStyle,
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      print('Terms of Service"');
                                    }),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
