import 'package:doctor/Drawer.dart';
import 'package:doctor/screen/finddoctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        statusBarColor: Colors.transparent));
    return Scaffold(
        key: drawerKey,
        drawer: Drawerr(),
        drawerEdgeDragWidth: 0,
        appBar: AppBar(
            title: Text('Doctoriod',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 17)),
            centerTitle: true,
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
            leading: IconButton(
                icon: Icon(Icons.short_text),
                color: Colors.white,
                onPressed: () {
                  drawerKey.currentState.openDrawer();
                })),
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FindDoctor()));
                    },
                    child: Container(
                      height: 130,
                      width: MediaQuery.of(context).size.width / 2.3,
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 1, color: Color(0xff19769f)),
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image(
                            image: AssetImage('assets/image/surgeon.png'),
                            height: 60,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Find Doctor',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black54),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 130,
                    width: MediaQuery.of(context).size.width / 2.3,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Color(0xff19769f)),
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image(
                          image: AssetImage('assets/image/hospital.png'),
                          height: 60,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Hospital',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 130,
                    width: MediaQuery.of(context).size.width / 2.3,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Color(0xff19769f)),
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image(
                          image: AssetImage('assets/image/first-aid-kit.png'),
                          height: 60,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Doctoriod',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 130,
                    width: MediaQuery.of(context).size.width / 2.3,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Color(0xff19769f)),
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image(
                          image: AssetImage('assets/image/medical-history.png'),
                          height: 60,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Appointments',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 130,
                    width: MediaQuery.of(context).size.width / 2.3,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Color(0xff19769f)),
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image(
                          image: AssetImage('assets/image/ambulance.png'),
                          height: 60,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Ambulance',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 130,
                    width: MediaQuery.of(context).size.width / 2.3,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Color(0xff19769f)),
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image(
                          image: AssetImage('assets/image/pill.png'),
                          height: 60,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Medicine Shop',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
