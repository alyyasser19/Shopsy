import 'package:flutter/material.dart';
import 'package:flutter_shop/theme/AppBarTheme.dart';
import 'package:flutter_shop/theme/Colors.dart';
import 'package:flutter_shop/theme/Text.dart';

import 'BottomNavTheme.dart';


ThemeData theme = ThemeData(
  fontFamily: "Lato", colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red),
  primaryColor: shopsyRd,
  appBarTheme: appBarTheme,
  textTheme: textTheme,
  bottomNavigationBarTheme: bottomNav,
  );