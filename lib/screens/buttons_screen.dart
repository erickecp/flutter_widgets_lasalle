import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pop(context);
      }, child: Icon(Icons.arrow_back),),
      appBar: AppBar(
          centerTitle: true,
          title: Text('Buttons Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: (){}, child: Text('Button Text')),
              SizedBox(height: 10,),
              FilledButton(onPressed: (){}, child: Text('Boton con relleno')),
              SizedBox(height: 10,),
              OutlinedButton(onPressed: (){}, child: Text('Outline Button')),
              SizedBox(height: 10,),
              IconButton(onPressed: (){}, icon: Icon(Icons.ac_unit_sharp)),
              SizedBox(height: 10,),
              FilledButton.icon(onPressed: (){}, label: Text('Filled With Icon'), icon: Icon(Icons.people),),
              SizedBox(height: 10,),
              OutlinedButton.icon(onPressed: null, label: Text('Outline With Icon'), icon: Icon(Icons.dangerous),),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){}, child: Text('Elevated Button')),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){}, child: Icon(Icons.deck_rounded)),
              
            ],
          ),
        ),
    );
  }
}