import 'package:flutter/material.dart';
import 'package:eco_mobile_app/screens/success-request.dart'; // استيراد صفحة النجاح
import 'package:eco_mobile_app/widget/custom-nav.dart';

class RequestDetailsPage extends StatefulWidget {
  final String serviceName;

  RequestDetailsPage({required this.serviceName});

  @override
  _RequestDetailsPageState createState() => _RequestDetailsPageState();
}

class _RequestDetailsPageState extends State<RequestDetailsPage> {
  bool isLoading = false; // حالة التحميل
  TextEditingController descriptionController = TextEditingController();

  void sendRequest() {
    if (descriptionController.text.isEmpty) {
      return; 
    }

    setState(() {
      isLoading = true; // بدء التحميل
    });

    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        isLoading = false; // إنهاء التحميل
      });

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SuccessRequestPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'New Request',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New Request ${widget.serviceName}',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: descriptionController,
              maxLines: 4,
              decoration: InputDecoration(
                labelText: 'Description',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: isLoading ? null : sendRequest, // تعطيل الزر أثناء التحميل
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // خلفية سوداء
                  foregroundColor: Colors.white, // نص أبيض
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: isLoading
                    ? CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      )
                    : Text(
                        'Send',
                        style: TextStyle(fontSize: 16),
                      ),
              ),
            ),
          ],
        ),
      ),
       bottomNavigationBar: CustomNavBar(), 
    );
  }
}
