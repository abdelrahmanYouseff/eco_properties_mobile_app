import 'package:flutter/material.dart';
import 'package:eco_mobile_app/widget/custom-nav.dart';


class BadgeIdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Badge ID'),
        centerTitle: true,
      ),
      body: Center(
        child: Image.asset(
          'assets/icons/qr.png', // ضع مسار الصورة هنا
          width: 800, // حجم الصورة
          height: 800,
          fit: BoxFit.contain, // تناسب الصورة داخل الحاوية
        ),
      ),
            bottomNavigationBar: CustomNavBar(),

    );
  }
}
