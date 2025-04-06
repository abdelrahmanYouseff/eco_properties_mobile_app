import 'package:flutter/material.dart';
import 'package:eco_mobile_app/widget/custom-nav.dart';


class SuccessRequestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle, // أيقونة علامة الصح
              color: Colors.green,
              size: 100,
            ),
            SizedBox(height: 20), // مسافة بين الأيقونة والنص
            Text(
              'Your Request has been submitted successfully',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
             bottomNavigationBar: CustomNavBar(), 

    );
  }
}
