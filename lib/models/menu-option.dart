import 'package:flutter/material.dart';

class MenuOption {
  final String title;
  final String route;
  final Widget screen;
  final IconData icon;

  MenuOption(this.title, this.route, this.screen, this.icon);
}