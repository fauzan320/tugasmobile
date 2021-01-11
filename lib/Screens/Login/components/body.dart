import 'package:flutter/material.dart';
import 'package:projectawal/Screens/Login/components/background.dart';
import 'package:projectawal/Screens/Signup/signup_screen.dart';
import 'package:projectawal/components/already_have_an_account_acheck.dart';
import 'package:projectawal/components/rounded_button.dart';
import 'package:projectawal/components/rounded_input_field.dart';
import 'package:projectawal/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projectawal/Screens/dashboard.dart';



class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  void _tampilkanalert(context) {
    AlertDialog alertDialog = new AlertDialog(
      content: new Container(
        height: 200.0,
        child: new Center(
          child: new Text("Email atau Password Yang Anda Masukan Salah"),
        ),
      ),
      actions: [
        FlatButton(
          child: Text('Tutup'),
          onPressed: () {
            Navigator.of(context).pop();

          },
        ),
      ],
    );
    showDialog(
      context: context,
      child: alertDialog,
      barrierDismissible: false,
    );
  }

  @override
  Widget build(BuildContext context) {
      String email,password;
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (e) {
                email= e;
              },
            ),
            RoundedPasswordField(
              onChanged: (p) {
                password = p;
              },
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                if(email=='sudekat' && password =='air') {
                   Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return dashboard();
                    },
                  ),
                );
                }else{
                  return _tampilkanalert(context);
                }
                
              },

            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
