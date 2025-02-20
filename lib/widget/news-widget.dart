import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  CustomWidget({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // الصورة على اليسار
        Image.network(
          imageUrl,
          width: 50, // يمكنك تعديل عرض الصورة حسب الحاجة
          height: 50, // يمكنك تعديل ارتفاع الصورة حسب الحاجة
          fit: BoxFit.cover, // جعل الصورة تغطي المساحة
        ),
        SizedBox(width: 10), // مسافة بين الصورة والعنوان
        // النص على اليمين
        Column(
          crossAxisAlignment: CrossAxisAlignment.start, // محاذاة النص إلى اليسار
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold, // جعل العنوان عريض
              ),
            ),
            SizedBox(height: 4), // مسافة بين العنوان والعنوان الفرعي
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey, // لون العنوان الفرعي
              ),
            ),
          ],
        ),
      ],
    );
  }
}
