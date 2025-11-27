import 'package:flutter/material.dart';



class Accountpage extends StatelessWidget {
  const Accountpage({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('السيرة الذات'),
        backgroundColor: Colors.amber[100],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.pink[50],
              child: Column(
                children: [
                  SizedBox(height: 20),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/1764264604993.jpg'), // تأكد من وجود الصورة في المسار الصحيح
                  ),
                  Divider(),
                  Text(
                    'hebt alrahman anwer',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  Divider(),
                  Text(
                    'Developer',
                    style: TextStyle(fontSize: 19, fontStyle: FontStyle.italic),
                  ),
                  Divider(),
                  _buildContactRow('Email', 'hebtanwer@gmail.com'),
                  Divider(),
                  _buildContactRow('Phone', '77634777'),
                  Divider(),
                  Text(
                    'skills',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                  Divider(),
                  _buildSkills(),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactRow(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        Text(value),
      ],
    );
  }

  Widget _buildSkills() {
    final skills = [
      'Flutter Development',
      'Dart Programming',
      'speaking with english',
      
     
    ];

    return Padding(
      padding: const EdgeInsets.only(left: 21.0, right: 21.0),
      child: Column(
        children: skills.map((skill) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Row(
              children: [
                Icon(Icons.check, color: Colors.grey),
                SizedBox(width: 11),
                Text(skill),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}