import 'package:flutter/material.dart';
import 'package:eco_mobile_app/widget/custom-nav.dart';
import 'package:eco_mobile_app/screens/qr-screen.dart';
import 'package:eco_mobile_app/screens/badgeid_screen.dart'; // ✅ استيراد الصفحة الجديدة
import 'package:eco_mobile_app/screens/support-screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     appBar: AppBar(
      backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0), // تحريك العنوان للأعلى
          child: Text(
            'FNZ Group',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              print('Notification pressed');
            },
          ),
        ],
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 5),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 235, 235, 235),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QrScreen()),
                  );
                },
                child: Text(
                  'Visitor QR',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(width: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 235, 235, 235),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BadgeIdScreen()), // ✅ التنقل إلى صفحة Badge ID
                  );
                },
                child: Text(
                  'Badge ID',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(width: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 235, 235, 235),
                ),
                onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SupportPage()),
  );
},
                child: Text(
                  'Support',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(width: 10),
            ],
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              'Latest News',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          LatestNewsWidget(
            title: 'Grand Opening of Our New Headquarters!',
            description: 'We are thrilled to announce the grand opening\nof our new headquarters! A modern workspace\ndesigned for productivity and collaboration.\nWelcome to the future of work!',
            image: 'assets/images/eco.png',
          ),
          SizedBox(height: 25),
          LatestNewsWidget(
            title: 'Need Maintenance Support? Here’s How!',
            description: 'Easily request maintenance support through\nthe app’s “Maintenance” tab. Submit issues,\ntrack progress, and keep our workspace in top\nshape with just a few taps!',
            image: 'assets/images/Maintenance-2.png',
          ),
        ],
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}

class LatestNewsWidget extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  LatestNewsWidget({required this.title, required this.description, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 70,
            height: 70,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                description,
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
