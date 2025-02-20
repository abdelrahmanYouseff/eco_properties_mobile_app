import 'package:flutter/material.dart';
import 'package:eco_mobile_app/widget/custom-nav.dart'; // استيراد ملف CustomNavBar

class QrScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // استبدل 'assets/images/your_image.png' بمسار الصورة التي تريد عرضها
    String imagePath = 'assets/icons/qr.png';

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FNZ Group',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back), // سهم الرجوع
          onPressed: () {
            Navigator.pop(context); // العودة إلى الصفحة السابقة
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications), // أيقونة الإشعارات
            onPressed: () {
              print('Notification pressed'); // إجراء الضغط على الإشعارات
            },
          ),
        ],
      ),
      body: Center(
        child: Image.asset(
          imagePath, // استبدل بمسار الصورة الخاص بك
          width: 400, // يمكنك تحديد عرض الصورة
          height: 400, // يمكنك تحديد ارتفاع الصورة
          fit: BoxFit.cover, // التحكم في كيفية ملء الصورة
        ),
      ),
      bottomNavigationBar: CustomNavBar(), // إضافة شريط التنقل المخصص هنا
    );
  }
}
