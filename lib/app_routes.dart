
import 'package:flutter/material.dart';
import 'package:flutter_widgets/models/menu-option.dart';
import 'package:flutter_widgets/screens/buttons_screen.dart';
import 'package:flutter_widgets/screens/cards_screen.dart';
import 'package:flutter_widgets/screens/column_rows_screen.dart';

class Routes {
  final menu = <MenuOption>[
    MenuOption('Buttons', '/buttons', ButtonsScreen(), Icons.baby_changing_station_sharp),
    MenuOption('Cards', '/cards', CardsScreen(), Icons.card_membership),
    MenuOption('Columns & Rows', '/columsrows', ColumnRowsScreen(), Icons.grid_3x3),
  ];

}