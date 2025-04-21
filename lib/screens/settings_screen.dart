import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/custom_drawer.dart';

class SettingsScreen extends StatelessWidget{
  const SettingsScreen({super.key});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Настройки")),
      drawer: CustomDrawer(),
      body: Center(
        child: ElevatedButton(
          
          onPressed: () => Navigator.pop(context),
          child: Text("Вернуться назад"),
         ), 
      ),
    );
  }
}