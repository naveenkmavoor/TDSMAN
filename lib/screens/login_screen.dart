import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size * 1 / 3;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              "LOGIN",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2661FA),
                  fontSize: 36),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 400),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(30.0)),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "User Email",
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 15)),
            ),
          ),
          SizedBox(height: size.height * 0.03),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 400),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(30.0)),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Password",
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 15)),
              obscureText: true,
            ),
          ),
          SizedBox(height: size.height * 0.05),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: RaisedButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0)),
              textColor: Colors.white,
              padding: const EdgeInsets.all(0),
              child: Container(
                alignment: Alignment.center,
                height: 50.0,
                width: size.width * 0.5,
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(80.0),
                    gradient: new LinearGradient(colors: [
                      Color.fromARGB(255, 255, 136, 34),
                      Color.fromARGB(255, 255, 177, 41)
                    ])),
                padding: const EdgeInsets.all(0),
                child: Text(
                  "LOGIN",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: GestureDetector(
              onTap: () => {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()))
              },
              child: Text(
                "Don't Have an Account? Sign up",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2661FA)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
