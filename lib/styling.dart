import 'package:flutter/material.dart';
import 'size_config.dart';

class AppTheme {
  AppTheme._();

  static const Color appBackgroundColor = Color(0xFF1A1A36);
  static const Color topBarBackgroundColor = Color(0xFFFFD974);
  static const Color selectedTabBackgroundColor = Color(0xFFFFC442);
  static const Color unSelectedTabBackgroundColor = Color(0xFFFFFFFC);
  static const Color subTitleTextColor = Color(0xFF9F988F);
  static const Color buttonColor = Color(0xFFFF5018);
  static const Color borderColor = Color(0xFF707070);

  static final ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: AppTheme.appBackgroundColor,
      brightness: Brightness.light,
      textTheme: lightTextTheme,
      inputDecorationTheme: inputDecorationTheme);

  static final ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.black12,
      brightness: Brightness.dark,
      textTheme: darkTextTheme,
      inputDecorationTheme: inputDecorationTheme);

  static final TextTheme lightTextTheme = TextTheme(
    title: _titleLight,
    subtitle: _subTitleLight,
    button: _buttonLight,
    display1: _greetingLight,
    display2: _searchLight,
    body1: _selectedTabLight,
    body2: _unSelectedTabLight,
  );

  static final TextTheme darkTextTheme = TextTheme(
    title: _titleDark,
    subtitle: _subTitleDark,
    button: _buttonDark,
    display1: _greetingDark,
    display2: _searchDark,
    body1: _selectedTabDark,
    body2: _unSelectedTabDark,
  );

  static final TextStyle _titleLight = TextStyle(
    color: Colors.white,
    fontSize: 3.5 * SizeConfig.textMultiplier,
  );

  static final InputDecorationTheme inputDecorationTheme =
      InputDecorationTheme(
          hintStyle: textFieldTextStyle,
          filled: true,
          fillColor: const Color(0xffefefef),
          focusedBorder:outlinedBorder,
          border: outlinedBorder);


  static final TextStyle textFieldTextStyle=TextStyle(
    fontFamily: 'NotoSansJP-Regular',
    fontSize: 14,
    color: const Color(0xff777777),
    letterSpacing: -0.9,
    height: 1,
  );

  static final outlinedBorder=OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(90.0)),
    // borderSide: BorderSide(
    //   color: Colors.transparent,
    // )
    borderSide: BorderSide.none,
  );

  static final TextStyle _subTitleLight = TextStyle(
    color: subTitleTextColor,
    fontSize: 2 * SizeConfig.textMultiplier,
    height: 1.5,
  );

  static final TextStyle _buttonLight = TextStyle(
    color: Colors.black,
    fontSize: 2.5 * SizeConfig.textMultiplier,
  );

  static final TextStyle _greetingLight = TextStyle(
    color: Colors.black,
    fontSize: 2.0 * SizeConfig.textMultiplier,
  );

  static final TextStyle _searchLight = TextStyle(
    color: Colors.black,
    fontSize: 2.3 * SizeConfig.textMultiplier,
  );

  static final TextStyle _selectedTabLight = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 2 * SizeConfig.textMultiplier,
  );

  static final TextStyle _unSelectedTabLight = TextStyle(
    color: Colors.grey,
    fontSize: 2 * SizeConfig.textMultiplier,
  );

  static final TextStyle _titleDark = _titleLight.copyWith(color: Colors.white);

  static final TextStyle _subTitleDark =
      _subTitleLight.copyWith(color: Colors.white70);

  static final TextStyle _buttonDark =
      _buttonLight.copyWith(color: Colors.black);

  static final TextStyle _greetingDark =
      _greetingLight.copyWith(color: Colors.black);

  static final TextStyle _searchDark =
      _searchDark.copyWith(color: Colors.black);

  static final TextStyle _selectedTabDark =
      _selectedTabDark.copyWith(color: Colors.white);

  static final TextStyle _unSelectedTabDark =
      _selectedTabDark.copyWith(color: Colors.white70);
}
