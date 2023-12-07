import 'package:flutter/material.dart';
import 'package:sportsapp/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  FocusNode emailNode = FocusNode();
  FocusNode passNode = FocusNode();
  var email = TextEditingController();
  var password = TextEditingController();

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
        Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Text(
              'Don\'t give up, Don\'t ever give up',
              style: TextStyle(
                  fontSize: 25.0, letterSpacing: 1.0, fontFamily: 'Pantry'),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60.0, bottom: 20.0),
            child: Image.asset(
              'assets/images/running.png',
              width: 65.0,
              height: 65.0,
            ),
          ),
          //email
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: TextFormField(
              controller: email,
              onFieldSubmitted: (val) {
                //class FocusScope and method requestFocus
                FocusScope.of(context).requestFocus(passNode);
              },
              focusNode: emailNode,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                labelText: 'Email Address',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(
                      style: BorderStyle.solid, color: Colors.black26),
                ),
                hintMaxLines: 2,
                // border:  ,

                hintStyle: TextStyle(letterSpacing: 3),
              ),
            ),
          ),
          //password
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            child: TextFormField(
              controller: password,
              focusNode: passNode,
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.solid, color: Colors.black26),
                      borderRadius: BorderRadius.circular(20.0)),
                  hintMaxLines: 3,
                  labelText: 'Password',
                  hintStyle: TextStyle(letterSpacing: 3)),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
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
                    'LOGIN',
                    style: TextStyle(
                        fontSize: 15.0,
                        letterSpacing: 1.0,
                        color: Colors.white70),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have account? ",
                  style: TextStyle(
                    letterSpacing: 1.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3.0),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUp()));
                      },
                      child: Text(
                        'REGISTER NOW',
                        style: TextStyle(fontSize: 12.0, color: Colors.black45),
                      )),
                )
              ],
            ),
          )
        ]),
      ]),
    );
  }
}
