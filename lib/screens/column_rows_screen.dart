import 'package:flutter/material.dart';

class ColumnRowsScreen extends StatelessWidget {
  const ColumnRowsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              color: Colors.red,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton.filled(onPressed: (){}, icon: Icon(Icons.gamepad)),
                  IconButton.filled(onPressed: (){}, icon: Icon(Icons.gamepad)),
                  IconButton.filled(onPressed: (){}, icon: Icon(Icons.gamepad)),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton.filled(onPressed: (){}, icon: Icon(Icons.gamepad)),
                IconButton.filled(onPressed: (){}, icon: Icon(Icons.gamepad)),
                IconButton.filled(onPressed: (){}, icon: Icon(Icons.gamepad))
              ],
            )
          ],
        ),
      ),
    );
  }
}