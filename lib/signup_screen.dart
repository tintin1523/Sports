import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  FocusNode fullNode = FocusNode();
  FocusNode emailNode = FocusNode();
  FocusNode passNode = FocusNode();
  FocusNode confirmNode = FocusNode();
  var fullName = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  var confirmPassword = TextEditingController();

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
          SizedBox(
            height: 8.0,
          ),
          // Full name
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: fullName,
              onFieldSubmitted: (val) {
                FocusScope.of(context).requestFocus(emailNode);
              },
              focusNode: fullNode,
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.perm_identity),
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
              controller: email,
              focusNode: emailNode,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
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
              onFieldSubmitted: (val) {
                FocusScope.of(context).requestFocus(confirmNode);
              },
              controller: password,
              focusNode: passNode,
              obscureText: true,
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  prefixIcon: Icon(Icons.password),
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
              controller: confirmPassword,
              focusNode: confirmNode,
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.u_turn_right_outlined),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
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
            height: 15.0,
          ),
          //Sign Up Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              width: double.infinity,
              child: MaterialButton(
                color: Colors.black,
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(fontSize: 15.0, letterSpacing: 1.0,color: Colors.white70),
                  ),
                ),
              ),
            ),
          )
        ]),
      ]),
    );
  }
}
