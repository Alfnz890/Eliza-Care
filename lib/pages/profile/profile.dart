import 'package:flutter/material.dart';
import 'package:flutter_application_2v1/theme/colors.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
                Text('My Profile', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.all(13),
                  decoration: BoxDecoration(
                    color: white_grey,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset('lib/assets/doctor1.jpg', width: 60,),
                          ),
                          SizedBox(width: 17),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Amelia Jonathan', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                              Text('ameliajonah@gmail.com')
                            ],
                          )
                        ],
                      ),
                      Icon(Icons.keyboard_arrow_right)
                    ],
                  ),
                ),
                SizedBox(height: 17),
                Text('ADDRESS & SECURITY', style: TextStyle(color: Colors.grey, fontSize: 15),),
                SizedBox(height: 17),
                Container(
                  decoration: BoxDecoration(
                    color: white_grey,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.location_pin, color: Colors.grey,),
                                SizedBox(width: 20),
                                Text('Saved Address', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                              ],
                            ),
                            Icon(Icons.keyboard_arrow_right)
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.password, color: Colors.grey,),
                                SizedBox(width: 20),
                                Text('Change Password', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                              ],
                            ),
                            Icon(Icons.keyboard_arrow_right)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 17),
                Text('MORE', style: TextStyle(color: Colors.grey, fontSize: 15),),
                SizedBox(height: 17),
                Container(
                  decoration: BoxDecoration(
                    color: white_grey,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.notifications, color: Colors.grey,),
                                SizedBox(width: 20),
                                Text('Notification Preferences', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                              ],
                            ),
                            Icon(Icons.keyboard_arrow_right)
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.privacy_tip, color: Colors.grey,),
                                SizedBox(width: 20),
                                Text('Privacy Policy', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                              ],
                            ),
                            Icon(Icons.keyboard_arrow_right)
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.headphones, color: Colors.grey,),
                                SizedBox(width: 20),
                                Text('Help and Support', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                              ],
                            ),
                            Icon(Icons.keyboard_arrow_right)
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.question_answer, color: Colors.grey,),
                                SizedBox(width: 20),
                                Text('FAQ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                              ],
                            ),
                            Icon(Icons.keyboard_arrow_right)
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.logout, color: Colors.grey,),
                                SizedBox(width: 20),
                                Text('Logout', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                              ],
                            ),
                            Icon(Icons.keyboard_arrow_right)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}