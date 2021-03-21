import 'package:flutter/material.dart';
import 'package:flutter_ebook_app/views/splash/splash.dart';

class EmailVerify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                top: 40,
              ),
              child: Text(
                "A Verification link has been sent ! ",
                style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold, ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(14),
              padding: EdgeInsets.symmetric(
                  horizontal: 32
              ),
              child: Text(
                "Please click on the link that has been sent to your email account to verify your email and continue the registration process.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.symmetric(
                  horizontal: 10
              ),
              child: Image.asset(
                "assets/images/emailv.png",
                height: 400.0,
                width: 400.0,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 18),
              width: size.width * 0.8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  color: Color(0xFFFF8976),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Splash();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Proceed',
                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
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
