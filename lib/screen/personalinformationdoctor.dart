import 'package:doctor/screen/resultfinddoctor.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/typicons_icons.dart';

class PersonalInfomationDoctor extends StatefulWidget {
  final Listt list;

  const PersonalInfomationDoctor({Key key, this.list}) : super(key: key);

  @override
  _PersonalInfomationDoctorState createState() =>
      _PersonalInfomationDoctorState();
}

class _PersonalInfomationDoctorState extends State<PersonalInfomationDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [
                  const Color(0xff19769f),
                  const Color(0xff35d8a6),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
        ),
        centerTitle: true,
        title: Text('Personal Information',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 17)),
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.chevron_left,
            color: Colors.white,
            size: 30,
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 100,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Colors.black12))),
            child: Row(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(widget.list.img),
                      radius: 25,
                    ),
                    Positioned(
                      top: 1,
                      left: 2,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                widget.list.status ? Colors.green : Colors.red),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.list.name,
                      style: TextStyle(
                          color: Color(0xff19769f).withOpacity(0.7),
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.list.specialist,
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 15, left: 15),
              child: Text(
                'About',
                style: TextStyle(
                    fontWeight: FontWeight.w500, color: Colors.black87),
              )),
          Padding(
            padding: EdgeInsets.only(top: 5, left: 25, right: 25),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt tortor placerat lectus gravida, sit amet pulvinar erat tincidunt. Nulla non posuere tortor. Donec tincidunt ipsum quis nisl facilisis, sed iaculis nunc ornare.',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black26,
                  fontSize: 13),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            height: 2,
            color: Colors.black87,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 15),
            child: Text(
              'Address & Timing',
              style:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.black87),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 25, right: 25),
            child: Row(
              children: <Widget>[
                Icon(
                  Typicons.location,
                  size: 10,
                  color: Color(0xff19769f).withOpacity(0.7),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  widget.list.hospital,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueGrey.withOpacity(0.7)),
                )
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 10, left: 25, right: 25, bottom: 20),
            child: Row(
              children: <Widget>[
                Icon(
                  Typicons.clock,
                  size: 10,
                  color: Color(0xff19769f).withOpacity(0.7),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '10:00 PM to 20:00 AM',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueGrey.withOpacity(0.7)),
                )
              ],
            ),
          ),
          Divider(
            color: Colors.black87,
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 15),
            child: Text(
              'Certification',
              style:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.black87),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 25, right: 25),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.check_circle_outline,
                  size: 10,
                  color: Color(0xff19769f).withOpacity(0.7),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'BAMS',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey.withOpacity(0.7)),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.check_circle_outline,
                  size: 10,
                  color: Color(0xff19769f).withOpacity(0.7),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'MBBS',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey.withOpacity(0.7)),
                )
              ],
            ),
          ),
          Divider(
            color: Colors.black87,
            height: 2,
          ),
        ],
      ),
    );
  }
}
