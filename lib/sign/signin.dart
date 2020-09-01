import 'package:doctor/screen/home.dart';
import 'package:doctor/sign/forgetpassword.dart';
import 'package:doctor/sign/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:fluttericon/zocial_icons.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:
            const EdgeInsets.only(left: 25, right: 25, top: 100, bottom: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Sign In',
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xff19769f),
                )),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 45,
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'E-mail',
                    hintText: 'E-mail',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 45,
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                          color: Color(0xff19769f),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1.5, color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Remember')
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Forget(),
                        ));
                  },
                  child: Text(
                    'Forget Password ?',
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home())),
              child: Container(
                height: 45,
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
                      'Sign In',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Align(
                alignment: Alignment.center,
                child: Text(
                  'Or',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                )),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width / 2.38,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey, width: 0.5)),
                  child: Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Typicons.facebook,
                      color: Color(0xff19769f),
                    ),
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width / 2.38,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey, width: 0.5)),
                  child: Align(
                    alignment: Alignment.center,
                    child: Icon(
                      FontAwesome.gplus,
                      color: Color(0xff19769f),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
                child: Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: RichText(
                  text: TextSpan(
                    text: 'Dont Have Account ? ',
                    style: TextStyle(color: Colors.grey),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Create Account.',
                          style: TextStyle(color: Color(0xff19769f))),
                    ],
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
