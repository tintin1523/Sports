import 'dart:math';

import 'package:flutter/material.dart';


import '../text.dart';
import 'basketball.dart';


class Tennis extends StatelessWidget {

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
                  'assets/images/tennis.png',
                  width: 170.0,
                  height: 170.0,
                ),
              ),
            ),
            SizedBox(height: 40.0,),
            const Text(
              'Tennis',
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
                child: Text('${t.tennis_info}',style: TextStyle(wordSpacing: 1.0,height: 1.5),),
              ),
            ),
            SizedBox(height:70.0,width: double.infinity,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: double.infinity,
                child: MaterialButton(
                  color: Colors.black,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Basketball()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'NEXT',
                      style: TextStyle(fontSize: 15.0, letterSpacing: 2.0,color: Colors.white70),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
