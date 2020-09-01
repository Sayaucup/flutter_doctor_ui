import 'package:flutter/material.dart';

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
    Specialist('1'),
    Specialist('2'),
    Specialist('3'),
    Specialist('4'),
    Specialist('5'),
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
              height: 30,
            ),
            DropdownButton<Specialist>(
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
                  child: Text(list1.text),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
