
import 'package:flutter/material.dart';

class Login_HealthyControl extends StatefulWidget {
  const Login_HealthyControl({ Key key }) : super(key: key);

  @override
  _Login_HealthyControlState createState() => _Login_HealthyControlState();
}

class _Login_HealthyControlState extends State<Login_HealthyControl> {

  double _screenHeight(BuildContext context) => MediaQuery.of(context).size.height;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black,
                  Colors.black,
                  Colors.black38,
                ],
                stops: [0.0, 0.55, 9.0],
              ),
            ),
          ),
          Align(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: _screenHeight(context) * 0.1,
                  ),
                  Container(
                    child: Image.asset('assets/Portada.png',
                        width: 200),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 7, horizontal: 20),
                    child: Text(
                      "Healthy Control",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  _buildTextField("Email Address"),
                  _buildTextField("Password"),
                  _buildLoginBtn(),
                  _buildForgotPasswordBtn(),
                  _buildSocialBtnRow(),
                  SizedBox(height: 10),
                  _buildRegisterBtn()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget _buildTextField(String hint) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 15.0,
            offset: Offset(0.0, 3.0),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        autofocus: false,
        style: TextStyle(fontSize: 16.0, color: Colors.white),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.black12,
          hintText: hint,
          hintStyle: TextStyle(color: Colors.black, fontSize: 16),
          contentPadding: const EdgeInsets.only(left: 16.0),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(30),
          ),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(30)),
        ),
      ),
    );
}

Widget _buildLoginBtn() {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 15.0,
            offset: Offset(0.0, 3.0),
          ),
        ],
        color: Colors.blue,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Text(
            "LOGIN",
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildForgotPasswordBtn() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2),
      alignment: Alignment.center,
      child: FlatButton(
        onPressed: () => print('Forgot Password Button Pressed'),
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          '_______________ OR _______________',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  Widget _buildSocialBtn(Function onTap, AssetImage logo) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50.0,
        width: 50.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: Offset(0, 3),
              blurRadius: 15.0,
            ),
          ],
          image: DecorationImage(
            image: logo,
          ),
        ),
      ),
    );
  }

  Widget _buildSocialBtnRow() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 3.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buildSocialBtn(
            () => print('Login with Google'),
            AssetImage(
              'assets/google.jpg',
            ),
          ),
          SizedBox(width: 20),
          _buildSocialBtn(
            () => print('Login with Facebook'),
            AssetImage(
              'assets/facebook.jpg',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRegisterBtn() {
    return GestureDetector(
      onTap: () => print('Sign Up Button Pressed'),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'No tienes una cuenta? ',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'Registrate',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w400,
                  //decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ),
    );
}

