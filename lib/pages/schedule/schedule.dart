import 'package:flutter/material.dart';
import 'package:flutter_application_2v1/components/appointmentTile.dart';
import 'package:flutter_application_2v1/theme/colors.dart';

var schedule = ['Upcoming', 'Completed', 'Canceled'];

class Schedule extends StatelessWidget {
  const Schedule({super.key});

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
                Text(
                  'Schedule',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 120,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Center(
                        child: Text(
                          'Upcoming',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                    Container(
                      width: 120,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: white_grey,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Center(
                        child: Text(
                          'Completed',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      ),
                    ),
                    Container(
                      width: 120,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: white_grey,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Center(
                        child: Text(
                          'Canceled',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),

                //  Tiles
                Text('Nearest visit', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                SizedBox(height: 15),
               
               // Appointment
               Appointmenttile(doctorName: 'Dr. Ayu Lestari', position: 'Therapist', image: 'lib/assets/doctor1.jpg', date: '30/03/2024', clock: '15:30'),
               SizedBox(height: 15),
               Appointmenttile(doctorName: 'Dr. Risa Putri', position: 'Cardiologi', image: 'lib/assets/doctor2.jpg', date: '02/04/2024', clock: '15:30'),
               SizedBox(height: 15),
               Appointmenttile(doctorName: 'Dr. Bima Pratama', position: 'Therapist', image: 'lib/assets/doctor3.jpg', date: '07/04/2024', clock: '15:30'),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
