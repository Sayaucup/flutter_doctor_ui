import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Forget extends StatefulWidget {
  @override
  _ForgetState createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        statusBarColor: Colors.transparent));
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.chevron_left,
            color: Colors.grey,
            size: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Forgot Password',
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xff19769f),
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              'We just need your register e-mail ID to send reset link.',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 45,
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'E-Mail',
                    hintText: 'E-Mail',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
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
                    'Reset Password',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
