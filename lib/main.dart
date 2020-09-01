import 'package:doctor/screen/home.dart';
import 'package:doctor/sign/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Color(0xff19769f),
    ),
    home: Intro(),
  ));
}

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  List<PageViewModel> _pages() {
    return [
      PageViewModel(
          image: Image.asset('assets/image/surgeon.png'),
          title: 'Doctors',
          body: 'Find expert doctors for perticular problem on one tap'),
      PageViewModel(
          image: Image.asset('assets/image/medicine.png'),
          title: 'Medicine',
          body:
              'Alopathic, Ayurvedic and all type of medicines can bought from here'),
      PageViewModel(
          image: Image.asset('assets/image/medical-history.png'),
          title: 'Appointments',
          body: 'Book appointments and get best tretmenton one tap'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        statusBarColor: Colors.transparent));
    return Scaffold(
      body: IntroductionScreen(
        pages: _pages(),
        onDone: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SignIn()));
        },
        showSkipButton: false,
        showNextButton: false,

        done: Text('Got it'),
        // Icon(
        //   Typicons.right_open,
        //   size: 25,
        //   color: Color(0xff19769f),
        // ),
        dotsDecorator: const DotsDecorator(
          size: Size(10.0, 10.0),
          color: Color(0xFFebebeb),
          activeColor: Color(0xff19769f),
          activeSize: Size(10.0, 10.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
      ),
    );
  }
}
