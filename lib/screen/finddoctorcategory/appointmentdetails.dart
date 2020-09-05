import 'package:doctor/screen/finddoctorcategory/resultfinddoctor.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'package:fluttericon/octicons_icons.dart';
import 'package:fluttericon/typicons_icons.dart';

class AppointmentDetails extends StatefulWidget {
  final Listt details;

  const AppointmentDetails({Key key, this.details}) : super(key: key);
  @override
  _AppointmentDetailsState createState() => _AppointmentDetailsState();
}

class _AppointmentDetailsState extends State<AppointmentDetails> {
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
        title: Text('Appointment Details',
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
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage(widget.details.img),
                  radius: 35,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.details.name,
                      style: TextStyle(
                          color: Color(0xff19769f).withOpacity(0.7),
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                    Text('bams , mbbs'.toUpperCase(),
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                            fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Typicons.location,
                          size: 9,
                          color: Color(0xff19769f).withOpacity(0.7),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          width: MediaQuery.of(context).size.height / 3.5,
                          child: Text(
                            widget.details.hospital,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, offset: Offset(0, 2), blurRadius: 2)
                  ],
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                      width: 1, color: Color(0xff19769f).withOpacity(0.7))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Linecons.calendar,
                        size: 15,
                        color: Color(0xff19769f).withOpacity(0.7),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '02 - November - 2020',
                        style: TextStyle(fontSize: 13, color: Colors.blueGrey),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Divider(
                      height: 1,
                      color: Colors.blueGrey,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Octicons.clock,
                          size: 15, color: Color(0xff19769f).withOpacity(0.7)),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '11PM to 1AM',
                        style: TextStyle(fontSize: 13, color: Colors.blueGrey),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Services',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff19769f).withOpacity(0.7)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 7),
                    child: Divider(
                      height: 1,
                      color: Colors.blueGrey,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Weekly Checkup',
                        style: TextStyle(color: Colors.blueGrey, fontSize: 13),
                      ),
                      Text(
                        '\$20',
                        style: TextStyle(color: Colors.blueGrey, fontSize: 13),
                      ),
                    ],
                  ),
                  Text(
                    '35 mins',
                    style: TextStyle(
                        color: Color(0xff19769f),
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 7),
                    child: Divider(
                      height: 1,
                      color: Colors.blueGrey,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Weekly Checkup',
                        style: TextStyle(color: Colors.blueGrey, fontSize: 13),
                      ),
                      Text(
                        '\$100',
                        style: TextStyle(color: Colors.blueGrey, fontSize: 13),
                      ),
                    ],
                  ),
                  Text(
                    '35 mins',
                    style: TextStyle(
                        color: Color(0xff19769f),
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 7),
                    child: Divider(
                      height: 1,
                      color: Colors.blueGrey,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Total',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        '\$120',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 2, color: Colors.black26)),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Cancel Appointment',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.black45),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
