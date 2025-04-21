import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/custom_drawer.dart';

class ProfileScreen extends StatelessWidget {
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Профиль")),
      drawer: CustomDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ваш профиль", style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}