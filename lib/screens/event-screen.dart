import 'package:flutter/material.dart';
import 'package:eco_mobile_app/screens/home-screen.dart'; 
import 'package:eco_mobile_app/widget/custom-nav.dart';

class EventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          padding: EdgeInsets.only(left: 110),
          child: Text(
            'Events', 
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
      body: Padding(
        padding: const EdgeInsets.all(16.0), // إضافة حشوة
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // محاذاة النص إلى اليسار
          children: [
            // عنوان الصفحة
            Align(
              alignment: Alignment.centerLeft, // محاذاة العنوان إلى أقصى اليسار
              child: Text(
                'Discover Exciting Events Near You!', // العنوان الرئيسي
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 8), // مسافة بين العنوان والنص الفرعي
            Align(
              alignment: Alignment.centerLeft, // محاذاة النص الفرعي إلى أقصى اليسار
              child: Text(
                'Join us for thrilling activities and unforgettable experiences.', // العنوان الفرعي
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600], // لون النص الفرعي
                ),
              ),
            ),
            SizedBox(height: 16), // مسافة قبل المحتوى التالي
            
            // إضافة لايبل مع صورة
            Row(
              children: [
                // الصورة على اليسار
                Container(
                  width: 100, // عرض الصورة
                  height: 100, // ارتفاع الصورة
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/eco.png'), // استبدل بمسار الصورة الخاص بك
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(8), // زوايا دائرية
                  ),
                ),
                SizedBox(width: 16), // مسافة بين الصورة والنص
                // النص على اليمين
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Upcoming Music Festival', // عنوان الحدث
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4), // مسافة بين العنوان والنص الفرعي
                    Text(
                      'Don’t miss out on the fun!\nJoin us for an unforgettable\nexperience.', // نص فرعي
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600], // لون النص الفرعي
                      ),
                    ),
                    SizedBox(height: 8), // مسافة بين النص الفرعي والتاريخ
                    Text(
                      'Date: March 25, 2025', // التاريخ
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.green, // لون التاريخ
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16), // مسافة بعد اللايبل
            // نص إضافي
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Stay tuned for upcoming events and activities!'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavBar(), 
    );
  }
}
