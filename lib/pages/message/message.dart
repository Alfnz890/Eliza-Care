import 'package:flutter/material.dart';
import 'package:flutter_application_2v1/theme/colors.dart';

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Notifications', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                SizedBox(height: 20),
                Center(
                  child: Container(
                    child: Text('Today', style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: white_grey,
                    borderRadius: BorderRadius.circular(7)
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset('lib/assets/doctor1.jpg', width: 45,),
                      ),
                      SizedBox(width: 15),
                      Expanded(child: Text('This is a notification for your appointment with Dr. Ayu Lestari. Please arrive on time according to the scheduled time. If there are any changes, please contact us promptly.'))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}