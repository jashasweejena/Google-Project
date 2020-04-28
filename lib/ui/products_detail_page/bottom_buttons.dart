import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({Key key, this.screenHeight, this.screenWidth}) : super(key: key);

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
        child: Row(
      children: <Widget>[
        Expanded(
                  child: Button(
            imagePath: "assets/icons/create.png",
            content: "Create",
          ),
        ),
        Expanded(
                  child: Button(
            imagePath: "assets/icons/connect.png",
            content: "Connect",
          ),
        ),
        Expanded(
                  child: Button(
            imagePath: "assets/icons/discover.png",
            content: "Discover" ,
          ),
        ),
      ],
    ));
  }
}

class Button extends StatelessWidget {
  const Button({Key key, this.imagePath, this.content}) : super(key: key);
  final String imagePath;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.asset(
            imagePath,
            color: Colors.red,
            height: 30,
          ),
          Text(content),
        ],
      ),
    );
  }
}
