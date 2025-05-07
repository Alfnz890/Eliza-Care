import 'package:flutter/material.dart';
import 'package:flutter_application_2v1/theme/colors.dart';

class Appointmenttile extends StatelessWidget {
  final String doctorName, position, image, date, clock;

  const Appointmenttile({super.key, required this.doctorName, required this.position, required this.image, required this.date, required this.clock});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: white_grey,
          style: BorderStyle.solid,
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctorName,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      position,
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(image, width: 50),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Container(
                child: Row(
                  children: [
                    Icon(Icons.calendar_month, color: Colors.grey, size: 22),
                    SizedBox(width: 6),
                    Text(date, style: TextStyle(fontSize: 15)),
                  ],
                ),
              ),
              SizedBox(width: 20),
              Container(
                child: Row(
                  children: [
                    Icon(Icons.alarm, size: 22, color: Colors.grey),
                    SizedBox(width: 6),
                    Text(clock, style: TextStyle(fontSize: 15)),
                  ],
                ),
              ),
              SizedBox(width: 20),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(width: 6),
                  Text('Confirmed'),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 13),
                decoration: BoxDecoration(
                  color: white_grey,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Text('Cancel', style: TextStyle(fontSize: 16)),
              ),
              SizedBox(width: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 13),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Text(
                  'Reschedule',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
