import 'package:flutter/material.dart';
import 'package:flutter_application_2v1/model/doctor.dart';
import 'package:flutter_application_2v1/theme/colors.dart';

class DoctorsTile extends StatelessWidget {
  final Doctor doctor;

  const DoctorsTile({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/doctorDetails');
      },
      child: Container(
        padding: EdgeInsets.all(13),
        decoration: BoxDecoration(
          color: white_grey,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(doctor.image, width: 70),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    doctor.doctorName,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text(doctor.position, style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
            Text(
              '⭐ ${doctor.rating}',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
