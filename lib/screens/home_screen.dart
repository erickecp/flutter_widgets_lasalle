import 'package:flutter/material.dart';
import 'package:flutter_widgets/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final menu = Routes().menu;
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: ListView.builder(
          itemCount: menu.length,
          itemBuilder: (context, index) {
            final option = menu[index];
            return ListTile(
              title: Text(option.title),
              leading: Icon(option.icon),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushNamed(context, option.route);
              },
            );
          },
        )
      );
  }
}