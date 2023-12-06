import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'starting_screens/football.dart';


class Welcoming extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/introduction.png',
                width: 170.0,
                height: 170.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Text('Welcome',style: TextStyle(fontFamily: 'Racing Team - Personal Used',fontSize: 30.0,letterSpacing: 3.0),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0,top: 20.0),
                  child: Text(
                    ' To The Best Sports App in The Middle East'
                    ,style: TextStyle(fontSize: 15.0, letterSpacing: 1.0),
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Football()));
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
                ),
              )
            ],
          )),
    );
  }
}
