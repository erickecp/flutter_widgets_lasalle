import 'package:flutter/material.dart';
import 'package:flutter_widgets/app_routes.dart';
import 'package:flutter_widgets/screens/buttons_screen.dart';
import 'package:flutter_widgets/screens/cards_screen.dart';
import 'package:flutter_widgets/screens/column_rows_screen.dart';
import 'package:flutter_widgets/screens/home_screen.dart';
import 'package:flutter_widgets/theme/theme_app.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
  
    return  MaterialApp(
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context) => HomeScreen(),
        '/buttons' : (context) => ButtonsScreen(),
        '/cards' : (context) => CardsScreen(),
        '/columsrows' : (context) => ColumnRowsScreen(),
      },
    );
  }
}
