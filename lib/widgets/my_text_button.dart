import 'package:flutter/material.dart';

class MTextButton extends StatelessWidget {
  const MTextButton({ Key key, this.label, this.onTap,}) : super(key: key);

  final String label;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
            )
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(color: Colors.white,fontSize: 16),
          ),
        ),
      ),
    );
  }
}