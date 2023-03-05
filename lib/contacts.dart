import 'package:flutter/material.dart';

class ContactsPage extends StatefulWidget {
  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/images/My pictures.jpeg'),
            ),
            Text(
              'Amer Muhammed',
              style: TextStyle(
                fontSize: 38.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Web & Mobile app Developer',
              style: TextStyle(
                color: Colors.grey.shade200,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.all(10.0),
              color: Colors.white,
              
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.purple,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text('+90 531 331 66 52',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20.0,
                      )),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.purple,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    'amer31nar@gmail.com',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
