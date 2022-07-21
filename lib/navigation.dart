import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'screens/home_screen.dart';
import 'screens/transaction_screen.dart';

import 'package:finca/colors_picker.dart';

final List<Widget> listOfWidget = <Widget>[
  HomeScreen(),
  TransactionScreen(),
  Container(
    alignment: Alignment.center,
    child: const Icon(
      LineIcons.plusCircle,
      size: 56,
      color: kblueGrey,
    ),
  ),
  Container(
    alignment: Alignment.center,
    child: const Icon(
      LineIcons.user,
      size: 56,
      color: kblueGrey,
    ),
  ),
];
