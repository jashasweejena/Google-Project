import 'package:flutter/material.dart';

class ButtomButtons extends StatelessWidget {
  const ButtomButtons({Key key, this.screenHeight, this.screenWidth})
      : super(key: key);
  final double screenHeight;
  final double screenWidth;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: screenWidth * 0.7,
            height: screenHeight / 15,
            child: RaisedButton(
              onPressed: () {},
              child: Text(
                'PRE-ORDER',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.red,
              elevation: 20.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
            ),
          ),
          SizedBox(width: screenWidth * 0.05),
          Expanded(
            child: RaisedButton(
              color: Colors.white,
              elevation: 20,
              child: Icon(
                Icons.add,
                color: Color(0xFF0000FF),
              ),
              onPressed: () {},
              shape: CircleBorder(),
            ),
          )
        ],
      ),
    );
  }
}
