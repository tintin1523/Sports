import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sportsapp/login_screen.dart';
import 'package:sportsapp/text.dart';


class Basketball extends StatelessWidget {
  Texts t = Texts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,top:15.0),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.skip_previous_outlined,
                        size: 35.0,
                      )),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Center(
                child: Image.asset(
                  'assets/images/basketball-ball.png',
                  width: 170.0,
                  height: 170.0,
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            const Text(
              'Basketball',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontFamily: 'Racing Team - Personal Used',
                  fontSize: 25.0,
                  letterSpacing: 2.0),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                margin: EdgeInsets.all(15.0),
                child: Text(
                  '${t.basketball_info}',
                  style: TextStyle(wordSpacing: 1.0, height: 1.5),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
              width: double.infinity,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Text(
                'NEXT',
                style: TextStyle(letterSpacing: 2.0, fontSize: 18.0),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  foregroundColor: MaterialStateProperty.all(Colors.white70),
                  padding: MaterialStateProperty.all(EdgeInsets.only(
                      left: 30.0, right: 30.0, bottom: 10.0, top: 10.0))),
            )
          ],
        ),
      ),
    );
  }
}
