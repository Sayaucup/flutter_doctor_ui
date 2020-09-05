import 'package:doctor/screen/finddoctorcategory/resultfinddoctor.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Specialist {
  final String text;

  Specialist(this.text);
}

class Location {
  final String location;

  Location(this.location);
}

class Gender {
  final String gender;

  Gender(this.gender);
}

class FindDoctor extends StatefulWidget {
  @override
  _FindDoctorState createState() => _FindDoctorState();
}

class _FindDoctorState extends State<FindDoctor> {
  Specialist selecteduser1;
  var list1 = [
    Specialist('cabut gigi'),
    Specialist('cabut paru-paru'),
    Specialist('cabut jantung'),
    Specialist('cabut ginjal'),
    Specialist('cabut usus'),
  ];
  Location selecteduser2;
  var list2 = [
    Location('Jakarta'),
    Location('Bekasi'),
    Location('Bantul'),
    Location('Kretek'),
    Location('Bogor'),
  ];
  Gender selecteduser3;
  var list3 = [
    Gender('Laki-Laki'),
    Gender('Perempuan'),
  ];
  DateTime date;

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var datee = DateFormat('dd MMMM y');
    var formatt = datee.format(now);
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
        title: Text('Doctor',
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
        padding: EdgeInsets.only(top: 50, left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Find Doctor',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff19769f),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black54),
                  borderRadius: BorderRadius.circular(5)),
              child: DropdownButton<Specialist>(
                underline: Text(''),
                isExpanded: true,
                hint: Text('Specialist Doctor'),
                value: selecteduser1,
                onChanged: (Specialist i) {
                  setState(() {
                    selecteduser1 = i;
                  });
                },
                items: list1.map((Specialist list1) {
                  return DropdownMenuItem(
                    value: list1,
                    child: Text(
                      list1.text,
                      style: TextStyle(
                          color: selecteduser1 == list1
                              ? Color(0xff19769f)
                              : Colors.grey),
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black54),
                  borderRadius: BorderRadius.circular(5)),
              child: DropdownButton<Location>(
                underline: Text(''),
                isExpanded: true,
                hint: Text('Current Location'),
                value: selecteduser2,
                onChanged: (Location i) {
                  setState(() {
                    selecteduser2 = i;
                  });
                },
                items: list2.map((Location list2) {
                  return DropdownMenuItem(
                    value: list2,
                    child: Text(
                      list2.location,
                      style: TextStyle(
                          color: selecteduser2 == list2
                              ? Color(0xff19769f)
                              : Colors.grey),
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 15),
            InkWell(
              onTap: () {
                showDatePicker(
                        context: context,
                        initialDate: date == null ? DateTime.now() : date,
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2020, 9, 30, 22, 00))
                    .then((value) {
                  setState(() {
                    date = value;
                  });
                });
              },
              child: Container(
                  height: 40,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black54),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        date == null ? 'Date' : formatt,
                        style: TextStyle(
                            color: date == null
                                ? Colors.black54
                                : Color(0xff19769f),
                            fontSize: 16),
                      ),
                      Icon(Icons.arrow_drop_down)
                    ],
                  )),
            ),
            SizedBox(height: 15),
            Container(
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black54),
                  borderRadius: BorderRadius.circular(5)),
              child: DropdownButton<Gender>(
                underline: Text(''),
                isExpanded: true,
                hint: Text('Gender'),
                value: selecteduser3,
                onChanged: (Gender i) {
                  setState(() {
                    selecteduser3 = i;
                  });
                },
                items: list3.map((Gender list3) {
                  return DropdownMenuItem(
                    value: list3,
                    child: Text(
                      list3.gender,
                      style: TextStyle(
                          color: selecteduser3 == list3
                              ? Color(0xff19769f)
                              : Colors.grey),
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Resultfinddoctor())),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, offset: Offset(0, 3), blurRadius: 2)
                  ],
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[Color(0xff19769f), Color(0xff35d8a6)]),
                ),
                child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Search',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
