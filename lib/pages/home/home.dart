import 'package:flutter/material.dart';
import 'package:flutter_application_2v1/components/popular_doctors.dart';
import 'package:flutter_application_2v1/components/symtoms.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // Headers
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Hello, Amelia Jonathan 👋', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset('lib/assets/person.jpg', width: 55,),
                    )
                  ],
                ),
                SizedBox(height: 25),

                // Button Home and Clinic
                SizedBox(
                  height: 200,
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(12)
                        ),
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Image.asset('lib/assets/plus.png', width: 40,),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Clinic Visit', style: TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),),
                                  Text('Make an appoinment', style: TextStyle(color: Colors.white),)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12)
                        ),
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(14),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(240, 238, 250, 1),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Image.asset('lib/assets/home.png', width: 25,),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Home Visit', style: TextStyle(color: Colors.black, fontSize: 19, fontWeight: FontWeight.bold),),
                                  Text('Call the doctor home', style: TextStyle(color: Colors.grey),)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 10),
                
                // Symthoms
                Symtoms(),
                PopularDoctors()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
