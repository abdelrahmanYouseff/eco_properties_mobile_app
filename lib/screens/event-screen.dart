import 'package:flutter/material.dart';
import 'package:eco_mobile_app/screens/home-screen.dart'; 
import 'package:eco_mobile_app/widget/custom-nav.dart';

class EventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: EdgeInsets.only(left: 110),
          child: Text(
            'Event', 
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
        child: Text('Event Page'),
      ),
                  bottomNavigationBar: CustomNavBar(), 

    );
  }
}
