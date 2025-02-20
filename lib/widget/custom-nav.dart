import 'package:flutter/material.dart';
import 'package:eco_mobile_app/screens/home-screen.dart'; 
import 'package:eco_mobile_app/screens/people-screen.dart';
import 'package:eco_mobile_app/screens/groups-screen.dart';
import 'package:eco_mobile_app/screens/event-screen.dart';
import 'package:eco_mobile_app/screens/support-screen.dart';

class CustomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0), 
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavItemWithImage(context, 'assets/icons/home.png', 'Home', HomePage()), 
          _buildNavItemWithImage(context, 'assets/icons/people.png', 'People', PeoplePage()),
          _buildNavItemWithImage(context, 'assets/icons/group.png', 'Groups', GroupPage()),
          _buildNavItemWithImage(context, 'assets/icons/appointment.png', 'Events', EventPage()),
          _buildNavItemWithImage(context, 'assets/icons/customer-service.png', 'Support', SupportPage()),
        ],
      ),
    );
  }

  Widget _buildNavItemWithImage(BuildContext context, String imagePath, String label, Widget? page) {
    return GestureDetector(
      onTap: () {
        if (page != null) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(imagePath, width: 24, height: 24), 
          SizedBox(height: 3), 
          Text(label, style: TextStyle(fontSize: 12.0)), 
        ],
      ),
    );
  }
}
