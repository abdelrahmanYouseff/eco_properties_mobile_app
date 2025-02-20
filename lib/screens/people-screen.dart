import 'package:flutter/material.dart';
import 'package:eco_mobile_app/screens/home-screen.dart'; 
import 'package:eco_mobile_app/widget/custom-nav.dart';

class PeoplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: EdgeInsets.only(left: 100),
          child: Text(
            'People', 
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePage()), 
            );
          },
        ),
      ),
      body: Center(
        child: Text('People Page'),
      ),
      bottomNavigationBar: CustomNavBar(), // إضافة الناف بار هنا
    );
  }
}
