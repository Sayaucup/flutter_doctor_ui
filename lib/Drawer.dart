import 'package:doctor/screen/finddoctorcategory/profileuser.dart';
import 'package:flutter/material.dart';

class Drawerr extends StatefulWidget {
  @override
  _DrawerrState createState() => _DrawerrState();
}

class _DrawerrState extends State<Drawerr> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff19769f).withOpacity(0.7),
            Color(0xff35d8a6).withOpacity(0.7),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 27, left: 3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.close),
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: Colors.white.withOpacity(0.3)),
                        borderRadius: BorderRadius.circular(50)),
                    child: Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: Colors.white.withOpacity(0.5)),
                          borderRadius: BorderRadius.circular(50)),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/image/sayaaa.jpg'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Sayaucup',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 1,
              color: Colors.white,
            ),
            ListTile(
                onTap: () {
                  Navigator.pop(context);
                },
                title: Text(
                  'home'.toUpperCase(),
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 13),
                )),
            Divider(
              height: 1,
              color: Colors.white,
            ),
            ListTile(
                title: Text(
              'drug'.toUpperCase(),
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 13),
            )),
            Divider(
              height: 1,
              color: Colors.white,
            ),
            ListTile(
                title: Text(
              'service'.toUpperCase(),
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 13),
            )),
            Divider(
              height: 1,
              color: Colors.white,
            ),
            ListTile(
                title: Text(
              'dashboard'.toUpperCase(),
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 13),
            )),
            Divider(
              height: 1,
              color: Colors.white,
            ),
            ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                },
                title: Text(
                  'profile'.toUpperCase(),
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 13),
                )),
            Divider(
              height: 1,
              color: Colors.white,
            ),
            ListTile(
                title: Text(
              'log out'.toUpperCase(),
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 13),
            )),
            Divider(
              height: 1,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
