import 'package:flutter/material.dart';

var symsthoms = ['🤒 Temperature', '🤧 Snuffle', '🤕 Not Well', '😵‍💫 Not Rested'];

class Symtoms extends StatelessWidget {
  const Symtoms({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'What are your symptoms?',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(240, 238, 250, 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text('🤒 Temperature', style: TextStyle(fontSize: 17)),
                ),
                SizedBox(width: 12),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(240, 238, 250, 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text('🤧 Snuffle', style: TextStyle(fontSize: 17)),
                ),
                SizedBox(width: 12),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(240, 238, 250, 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text('🤕 Not Well', style: TextStyle(fontSize: 17)),
                ),
                SizedBox(width: 12),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(240, 238, 250, 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '😵‍💫 Not Rested',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
