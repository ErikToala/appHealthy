import 'package:flutter/material.dart';

class InputField extends StatelessWidget {

  const InputField({ Key key, @required this.placeholder, @required this.label, this.isPasswordField = false, this.dataController,this.validat, this.iconico, this.ic}) : super(key: key);

  final bool isPasswordField;
  final String label;
  final String placeholder;
  final TextEditingController dataController; 
  final Function validat;
  final Icon iconico;
  final Icons ic;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:16,left:16, right: 16,bottom:5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(19),
            topRight: Radius.circular(19),
            bottomLeft: Radius.circular(19),
            bottomRight: Radius.circular(19),
        ),
        boxShadow: [
          BoxShadow(blurRadius: 32, color: Colors.black.withOpacity(.1)),
        ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label),
            TextFormField(
              controller: dataController,
              obscureText: isPasswordField,
              validator: (value) => validat(value),
              decoration: InputDecoration(
                hintText: placeholder,
                suffixIcon: iconico,
                border: InputBorder.none,
                
              ),
              
            ),
          ],
        ),
    );
  }
}