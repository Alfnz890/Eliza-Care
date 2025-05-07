import 'package:flutter/material.dart';
import 'package:flutter_application_2v1/components/doctors_tile.dart';
import 'package:flutter_application_2v1/model/doctor.dart';

class PopularDoctors extends StatefulWidget {
  const PopularDoctors({super.key});

  @override
  State<PopularDoctors> createState() => _PopularDoctorsState();
}

class _PopularDoctorsState extends State<PopularDoctors> {
  List listDoctor = [
    Doctor(
      doctorName: 'Dr. Ayu Lestari',
      image: 'lib/assets/doctor1.jpg',
      position: 'Therapist',
      rating: '5.0',
    ),
    Doctor(
      doctorName: 'Dr. Risa Putri',
      image: 'lib/assets/doctor2.jpg',
      position: 'Cardiologist',
      rating: '5.0',
    ),
    Doctor(
      doctorName: 'Dr. Bima Pratama',
      image: 'lib/assets/doctor3.jpg',
      position: 'Neurologist',
      rating: '5.0',
    ),
    Doctor(
      doctorName: 'Dr. Rangga Saputra',
      image: 'lib/assets/doctor4.jpg',
      position: 'Therapist',
      rating: '5.0',
    ),
    Doctor(
      doctorName: 'Dr. Risa Putri',
      image: 'lib/assets/doctor5.jpg',
      position: 'Therapist',
      rating: '5.0',
    ),
    Doctor(
      doctorName: 'Dr. Risa Putri',
      image: 'lib/assets/bg3.png',
      position: 'Therapist',
      rating: '5.0',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text(
            'Popular Doctors',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          SizedBox(
            height: 340,
            child: GridView.builder(
              itemCount: listDoctor.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                final doctor = listDoctor[index];
                return DoctorsTile(doctor: doctor);
              },
            ),
          ),
        ],
      ),
    );
  }
}
