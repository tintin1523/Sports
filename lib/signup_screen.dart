import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  FocusNode fullNode = FocusNode();
  FocusNode emailNode = FocusNode();
  FocusNode passNode = FocusNode();
  FocusNode confirmNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              print('Hello to the most beautiful app');
            },
          ),
          title: Text('Sports App'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search_off_outlined),
            ),
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            )
          ]),
      body: ListView(children: [
        Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 15.0),
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
            padding: const EdgeInsets.only(top: 30.0, left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sign up',
                      style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0),
                    ),
                    Text('your Account',
                        style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0))
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 8.0,),
          // Full name
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              onFieldSubmitted: (val){
                FocusScope.of(context).requestFocus(emailNode);
              },
              focusNode: fullNode,
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.solid, color: Colors.black26),
                      borderRadius: BorderRadius.circular(20.0)),
                  hintMaxLines: 3,
                  labelText: 'Full Name',
                  hintStyle: TextStyle(letterSpacing: 3)),
            ),
          ),
          // Email Address
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              onFieldSubmitted: (val) {
                //class FocusScope and method requestFocus
                FocusScope.of(context).requestFocus(passNode);
              },
              focusNode: emailNode,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(
                      style: BorderStyle.solid, color: Colors.black26),
                ),
                hintMaxLines: 2,
                // border:  ,
                labelText: 'Email Address',

                hintStyle: TextStyle(letterSpacing: 3),
              ),
            ),
          ),
          //Password
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              onFieldSubmitted: (val){
                FocusScope.of(context).requestFocus(confirmNode);
              },
              focusNode: passNode,
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.solid, color: Colors.black26),
                      borderRadius: BorderRadius.circular(20.0)),
                  hintMaxLines: 3,
                  labelText: 'Password',
                  hintStyle: TextStyle(letterSpacing: 3)),
            ),
          ),
          //Confirm Password
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              focusNode: confirmNode,
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.solid, color: Colors.black26),
                      borderRadius: BorderRadius.circular(20.0)),
                  hintMaxLines: 3,
                  labelText: 'Confirm Password',
                  hintStyle: TextStyle(letterSpacing: 3)),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'SIGNUP',
              style: TextStyle(letterSpacing: 1.5),
            ),
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.only(
                  right: 25.0, left: 25.0, top: 15.0, bottom: 15.0)),
              backgroundColor: MaterialStateProperty.all(Colors.black),
              foregroundColor: MaterialStateProperty.all(Colors.white70),
            ),
          ),
        ]),
      ]),
    );
  }
}
