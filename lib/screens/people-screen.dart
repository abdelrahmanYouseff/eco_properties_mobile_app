import 'package:flutter/material.dart';
import 'package:eco_mobile_app/screens/home-screen.dart'; 
import 'package:eco_mobile_app/widget/custom-nav.dart';

class PeoplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                // أضف هنا ما يحدث عند الضغط على الزر
                print('Invite People Pressed');
              },
              icon: Icon(Icons.person_add, size: 24), // أيقونة "Invite"
              label: Text(
                'Invite People',
                style: TextStyle(fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12), backgroundColor: Color.fromARGB(255, 0, 0, 0), // لون النص
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // شكل الزر
                ),
              ),
            ),
            SizedBox(height: 20), // مساحة بين الزر والنص أدناه
            Text(
              'Invite your friends to join us!',
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavBar(), // إضافة الناف بار هنا
    );
  }
}
