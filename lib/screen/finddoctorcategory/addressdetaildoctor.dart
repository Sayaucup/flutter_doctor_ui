import 'package:doctor/screen/finddoctorcategory/resultfinddoctor.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/octicons_icons.dart';
import 'package:fluttericon/typicons_icons.dart';

class AddressDetailDoctor extends StatefulWidget {
  final Listt details;

  const AddressDetailDoctor({Key key, this.details}) : super(key: key);
  @override
  _AddressDetailDoctorState createState() => _AddressDetailDoctorState();
}

class _AddressDetailDoctorState extends State<AddressDetailDoctor> {
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
        title: Text('Address Details',
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
            child: Row(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(widget.details.img),
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
                            color: widget.details.status
                                ? Colors.green
                                : Colors.red),
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
                      widget.details.name,
                      style: TextStyle(
                          color: Color(0xff19769f).withOpacity(0.7),
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.details.specialist,
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
          Card(
            elevation: 2,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Octicons.checklist,
                        size: 20,
                        color: Color(0xff19769f).withOpacity(0.7),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Text(
                        'Jym Hospital',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.black87.withOpacity(0.7)),
                      )),
                      Icon(FontAwesome5.telegram,
                          color: Color(0xff19769f).withOpacity(0.7))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Typicons.location,
                        size: 20,
                        color: Color(0xff19769f).withOpacity(0.7),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            widget.details.hospital,
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Colors.black87.withOpacity(0.7)),
                          ),
                        ),
                      ),
                      Icon(Icons.call,
                          color: Color(0xff19769f).withOpacity(0.7))
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            elevation: 2,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Octicons.checklist,
                        size: 20,
                        color: Color(0xff19769f).withOpacity(0.7),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Text(
                        'Safe Zone Hospital',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.black87.withOpacity(0.7)),
                      )),
                      Icon(FontAwesome5.telegram,
                          color: Color(0xff19769f).withOpacity(0.7))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Typicons.location,
                        size: 20,
                        color: Color(0xff19769f).withOpacity(0.7),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            widget.details.hospital,
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Colors.black87.withOpacity(0.7)),
                          ),
                        ),
                      ),
                      Icon(Icons.call,
                          color: Color(0xff19769f).withOpacity(0.7))
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            elevation: 2,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Octicons.checklist,
                        size: 20,
                        color: Color(0xff19769f).withOpacity(0.7),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Text(
                        'Apex Hospital',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.black87.withOpacity(0.7)),
                      )),
                      Icon(FontAwesome5.telegram,
                          color: Color(0xff19769f).withOpacity(0.7))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Typicons.location,
                        size: 20,
                        color: Color(0xff19769f).withOpacity(0.7),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            widget.details.hospital,
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Colors.black87.withOpacity(0.7)),
                          ),
                        ),
                      ),
                      Icon(Icons.call,
                          color: Color(0xff19769f).withOpacity(0.7))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
