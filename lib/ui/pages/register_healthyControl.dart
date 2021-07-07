
import 'package:app_vistas/widgets/my_input_field.dart';
import 'package:app_vistas/widgets/my_text_button.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({ Key key }) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  GlobalKey<FormState> keyForm = new GlobalKey();
  GlobalKey<ScaffoldState> formPageKey = GlobalKey<ScaffoldState>();
  TextEditingController userNameCtrl = new TextEditingController();
  TextEditingController emailCtrl = new TextEditingController();
  TextEditingController passwordCtrl = new TextEditingController();
  TextEditingController repeatPassCtrl = new TextEditingController();
  String message = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: keyForm,
        child: Column(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.black38,
            ),
            child: SafeArea(
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.keyboard_arrow_left,
                            size: 30, color: Colors.white),
                      ),
                      Text(
                        "Registro",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  )),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                  colors: [
                  Colors.black,
                  Colors.black,
                  Colors.black38,
                  ]
                ),
                //borderRadius: BorderRadius.only(topLeft: Radius.circular(2)),
              ),
              clipBehavior: Clip.antiAlias,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 14,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InputField(
                        dataController: userNameCtrl,
                        label: 'Nombre de Usuario',
                        placeholder: "Example_08",
                        iconico: Icon(
                          Icons.account_circle_sharp,
                          color: Colors.blue,
                        ),
                        //validat: validateUser,
                      ),
                      SizedBox(height: 10),
                      InputField(
                        dataController: emailCtrl,
                        label: 'Correo Electrónico',
                        placeholder: "email@address.com",
                        iconico: Icon(
                          Icons.email,
                          color: Colors.blue,
                        ),
                        //validat: validateEmail,
                      ),
                      SizedBox(height: 10),
                      InputField(
                        dataController: passwordCtrl,
                        label: 'Contraseña',
                        placeholder: "********",
                        //validat: validatePassword,
                        iconico: Icon(
                          Icons.lock,
                          color: Colors.blue,
                        ),
                        isPasswordField: true,
                      ),
                      SizedBox(height: 10),
                      InputField(
                        dataController: repeatPassCtrl,
                        label: 'Confirmar contraseña',
                        placeholder: "********",
                        //validat: isConfirmedPassword,
                        iconico: Icon(
                          Icons.lock,
                          color: Colors.blue,
                        ),
                        isPasswordField: true,
                      ),
                      SizedBox(height: 20),
                      MTextButton(
                        label: "Registrarme",
                        onTap: () {
                          print('hola');
                          //if (!isValidForm()) return null;
                          //registerUser();
                        },
                      ),
                      SizedBox(height: 18),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "¿Ya tienes una cuenta? ",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Register()),
                                  (route) => false);
                            },
                            child: Text(
                              "Iniciar Sesión",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff1877F2),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
 
    );
  }


}

  

 


