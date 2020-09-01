import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

class Listt {
  final String img;
  final String name;
  final String specialist;
  final String hospital;
  final String km;
  final String rating;

  Listt(this.img, this.name, this.specialist, this.hospital, this.km,
      this.rating);
}

class Resultfinddoctor extends StatefulWidget {
  @override
  _ResultfinddoctorState createState() => _ResultfinddoctorState();
}

class _ResultfinddoctorState extends State<Resultfinddoctor> {
  var list = [
    Listt(
        'https://images.pexels.com/photos/2182979/pexels-photo-2182979.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        'Dr. Conner Mosciski',
        'Podiatrist',
        'Marjory Turnpike 85534 Lavina Valleys',
        '0.7 km',
        '4.5'),
    Listt(
        'https://images.pexels.com/photos/3884140/pexels-photo-3884140.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        'Dr. Arne Padberg',
        'General Practitioner',
        'Keith Courts 33442 Dietrich Harbors',
        '0.7 km',
        '4.5'),
    Listt(
        'https://images.pexels.com/photos/4173248/pexels-photo-4173248.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        'Dr. Aniya Hintz',
        'Pediatrician',
        'Jakubowski Skyway 6380 Brakus Harbors',
        '0.7 km',
        '4.5'),
    Listt(
        'https://images.pexels.com/photos/3714743/pexels-photo-3714743.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
        'Dr. Mrs. Elmer Kassulke',
        'Endocrinologist',
        'Windler Mountains 462 Lydia Course',
        '0.7 km',
        '4.5'),
    Listt(
        'https://images.pexels.com/photos/4167542/pexels-photo-4167542.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
        'Dr. Osvaldo Kuphal',
        'Neurologist',
        'Bergnaum Shore 0972 Hartmann Crest',
        '0.7 km',
        '4.5'),
    Listt(
        'https://images.pexels.com/photos/3873193/pexels-photo-3873193.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        'Dr. Marcelle O Kon',
        'Rheumatologist',
        'Daniel Summit 10058 Braun Forge',
        '0.7 km',
        '4.5'),
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
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.filter_list,
                size: 20,
              ),
              onPressed: () {})
        ],
        elevation: 0,
      ),
      body: ListView(
        physics: ScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: list.map((e) {
          final items = <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 120),
                          child: Stack(
                            children: <Widget>[
                              CircleAvatar(
                                onBackgroundImageError:
                                    (exception, stackTrace) {
                                  return Container(
                                    color: Color(0xff19769f),
                                  );
                                },
                                backgroundImage: NetworkImage(e.img),
                                radius: 40,
                              ),
                              Positioned(
                                top: 1,
                                left: 2,
                                child: Container(
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.green),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.star_border,
                                color: Color(0xff19769f).withOpacity(0.7),
                                size: 23,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                e.rating,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff19769f).withOpacity(0.7)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            '(789 Review)',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Text(
                  e.name,
                  style: TextStyle(
                      color: Color(0xff19769f).withOpacity(0.7),
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  e.specialist,
                  style: TextStyle(
                      fontSize: 11,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '(bams, mbbs)'.toUpperCase(),
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 12),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(
                          Linecons.camera,
                          color: Color(0xff19769f).withOpacity(0.7),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Photos',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Color(0xff19769f).withOpacity(0.7)),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(
                          FontAwesome5.telegram,
                          color: Color(0xff19769f).withOpacity(0.7),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          e.km,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Color(0xff19769f).withOpacity(0.7)),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.call,
                              color: Color(0xff19769f).withOpacity(0.7),
                            ),
                            onPressed: () {
                              UrlLauncher.launch(
                                  'tel://08979818868'.toString());
                            }),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Call',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Color(0xff19769f).withOpacity(0.7)),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(width: 1, color: Colors.black12))),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.person_pin_circle,
                        color: Color(0xff19769f).withOpacity(0.7),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(child: Text('Personal Information')),
                      Icon(
                        Icons.chevron_right,
                        color: Color(0xff19769f),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(width: 1, color: Colors.black12))),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Typicons.location,
                        size: 20,
                        color: Color(0xff19769f).withOpacity(0.7),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(child: Text('Working Address')),
                      Icon(
                        Icons.chevron_right,
                        color: Color(0xff19769f),
                      )
                    ],
                  ),
                ),
                InkWell(
                  // onTap: () => Navigator.push(
                  //     context, MaterialPageRoute(builder: (context) => Home())),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 3),
                            blurRadius: 2)
                      ],
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: <Color>[
                            Color(0xff19769f),
                            Color(0xff35d8a6)
                          ]),
                    ),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Box Appointment',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        )),
                  ),
                ),
              ],
            ),
          ];
          return InkWell(
            onTap: () {
              showModalBottomSheet<void>(
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext context) {
                    return Container(
                      child: Wrap(
                        children: items,
                      ),
                    );
                  });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 75,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 1, color: Colors.black12))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        CircleAvatar(
                          onBackgroundImageError: (exception, stackTrace) {
                            return Container(
                              color: Color(0xff19769f),
                            );
                          },
                          backgroundImage: NetworkImage(e.img),
                          radius: 30,
                        ),
                        Positioned(
                          left: 1,
                          top: 2,
                          child: Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.green),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          e.name,
                          style: TextStyle(
                              color: Color(0xff19769f),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          e.specialist,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Typicons.location,
                              size: 9,
                              color: Color(0xff19769f),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              width: MediaQuery.of(context).size.height / 3.5,
                              child: Text(
                                e.hospital,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueGrey),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Icon(
                                FontAwesome5.telegram_plane,
                                size: 10,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(e.km),
                            ],
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Icon(
                                Icons.star_border,
                                size: 14,
                                color: Color(0xff19769f),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                e.rating,
                                style: TextStyle(
                                    color: Color(0xff19769f),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
