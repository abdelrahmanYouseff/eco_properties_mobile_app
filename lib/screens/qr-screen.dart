import 'package:flutter/material.dart';
import 'package:eco_mobile_app/widget/custom-nav.dart'; // استيراد ملف CustomNavBar

class QrScreen extends StatefulWidget {
  @override
  _QrScreenState createState() => _QrScreenState();
}

class _QrScreenState extends State<QrScreen> {
  String? selectedAdvancedLine;
  String? selectedValidity;
  bool showQrCode = false; // متغير للتحكم في ظهور كود QR
  bool isLoading = false; // متغير للتحكم في حالة التحميل

  void generateQrCode() async {
    setState(() {
      isLoading = true; // بدء حالة التحميل
    });

    // محاكاة عملية تحميل كود QR
    await Future.delayed(Duration(seconds: 2)); // تأخير لمدة ثانيتين

    setState(() {
      showQrCode = true; // عرض كود QR بعد انتهاء التحميل
      isLoading = false; // إنهاء حالة التحميل
    });
  }

  @override
  Widget build(BuildContext context) {
    String imagePath = 'assets/icons/qr.png';

    return Scaffold(
      backgroundColor: Colors.white,
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Align(
          alignment: Alignment.topLeft, // محاذاة القوائم إلى أقصى اليسار
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // قائمة الاختيار الأولى
              DropdownButton<String>(
                hint: Text('Select Company'),
                value: selectedAdvancedLine,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedAdvancedLine = newValue;
                  });
                },
                items: <String>['Advanced line - Information Technology'] // استبدل الخيارات بالخيارات الفعلية
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(height: 20), // مسافة بين القائمتين

              // قائمة الاختيار الثانية
              DropdownButton<String>(
                hint: Text('Valid for'),
                value: selectedValidity,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedValidity = newValue;
                  });
                },
                items: <String>['1 day'] // خيارات الصلاحية
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(height: 20),

              // زر لإظهار كود QR
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  minimumSize: Size(400, 50),
                  backgroundColor: Colors.black,
                ),
                onPressed: () {
                  generateQrCode(); // استدعاء الدالة لإنشاء كود QR
                },
                child: isLoading
                    ? CircularProgressIndicator(
                        color: Colors.white, // لون الدائرة
                      )
                    : Text('Generate New QR Code'),
              ),
              SizedBox(height: 20),

              // عرض كود QR إذا كانت الحالة مفعلة
              if (showQrCode)
                Image.asset(
                  imagePath,
                  width: 400,
                  height: 400,
                  fit: BoxFit.cover,
                ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavBar(), // إضافة شريط التنقل المخصص هنا
    );
  }
}
