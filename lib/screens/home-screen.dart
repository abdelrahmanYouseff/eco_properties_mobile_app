import 'package:flutter/material.dart';
import 'package:eco_mobile_app/widget/custom-nav.dart'; 
import 'package:eco_mobile_app/screens/qr-screen.dart'; 

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 40),
          child: Text(
            'FNZ GROUP',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              print('Notification');
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
                  backgroundColor: Colors.grey,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QrScreen()),
                  );
                },
                child: Text(
                  'Badge ID',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(width: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                ),
                onPressed: () {
                  print('زر 2');
                },
                child: Text(
                  'Visitor QR',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(width: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                ),
                onPressed: () {
                  print('زر 3');
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
          LatestNewsWidget(),
          SizedBox(height: 25),
          LatestNewsWidget(),
          SizedBox(height: 25),
          LatestNewsWidget(),
          SizedBox(height: 25),
          LatestNewsWidget(),
        ],
      ),
      bottomNavigationBar: CustomNavBar(), 
    );
  }
}

class LatestNewsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Image.asset(
            'assets/images/demo.jpg',
            width: 70,
            height: 70,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Title of the News',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Subtitle of the news goes here',
                style: TextStyle(
                  fontSize: 16,
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
