import 'package:flutter/material.dart';
import 'package:eco_mobile_app/screens/home-screen.dart';
import 'package:eco_mobile_app/widget/custom-nav.dart';
import 'package:eco_mobile_app/screens/request-details.dart'; // استيراد صفحة الطلبات

class SupportPage extends StatelessWidget {
  final List<String> services = [
    'Air Conditioning',
    'Intercom',
    'Waste Collection',
    'Electrical',
    'Ceramic Marble',
    'Gypsum Board',
    'Carpentry',
    'Plumbing',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          padding: EdgeInsets.only(left: 100),
          child: Text(
            'Support',
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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Service Requests',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Select a service to request',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: services.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              RequestDetailsPage(serviceName: services[index]),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 240, 240, 240),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // تحديد الصورة لكل خدمة
                          if (services[index] == 'Air Conditioning')
                            Image.asset('assets/icons/air-conditioner.png',
                                width: 50, height: 50)
                          else if (services[index] == 'Intercom')
                            Image.asset('assets/icons/intercom.png',
                                width: 50, height: 50)
                          else if (services[index] == 'Waste Collection')
                            Image.asset('assets/icons/trash.png',
                                width: 50, height: 50)
                          else if (services[index] == 'Electrical')
                            Image.asset('assets/icons/flash.png',
                                width: 50, height: 50)
                          else if (services[index] == 'Ceramic Marble')
                            Image.asset('assets/icons/marble.png',
                                width: 50, height: 50)
                          else if (services[index] == 'Gypsum Board')
                            Image.asset('assets/icons/drywall.png',
                                width: 50, height: 50)
                          else if (services[index] == 'Carpentry')
                            Image.asset('assets/icons/tools.png',
                                width: 50, height: 50)
                          else if (services[index] == 'Plumbing')
                            Image.asset('assets/icons/plumbing.png',
                                width: 50, height: 50)
                          else
                            Icon(
                              Icons.help,
                              size: 50,
                              color: Colors.white,
                            ),
                          SizedBox(height: 8),
                          Text(
                            services[index],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
