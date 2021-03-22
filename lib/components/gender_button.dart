import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GenderButton extends StatelessWidget {
  final String icon;
  final String name;
  final Function press;
  final Color color;
  final Color textColor;
  const GenderButton({Key key, this.icon, this.name, this.press, this.color, this.textColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: Container(
              height: 105,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: color,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 6.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0),

                  )
                ]

              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(icon),
                    height: 40.0,
                    width: 40.0,
                  ),
                  SizedBox(height: size.height * 0.01),
                  Text(
                    name,
                    style: TextStyle(
                      color: textColor
                    ),
                  )
                ],
              ),

            ),
          )
        ),
      ),
    );
  }
}
