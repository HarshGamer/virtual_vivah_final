import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virtual_vivah_final/components/rounded_button.dart';
import 'package:virtual_vivah_final/constant.dart';
import 'package:virtual_vivah_final/screens/login/components/background.dart';
import 'package:virtual_vivah_final/screens/signup/signup.dart';

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  FocusNode focusNode = FocusNode();
  String hintText = 'Mobile no';
  @override
  void initState() {

    // TODO: implement initState
    super.initState();
    focusNode.addListener(() {
      if(focusNode.hasFocus) {
        hintText = '';
      }
      else {
        hintText = 'Mobile no';
      }
      setState(() {

      });
    });
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TODO: implement build
    return Background(
      child: SingleChildScrollView(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Container(
             height: 330.0,
             child: null,
             decoration: BoxDecoration(
             image: DecorationImage(
               image: AssetImage("assets/home_image.png"),
               fit: BoxFit.cover
             )
           ),),
            SizedBox(height: size.height * 0.03),
            Text(
              'Virtual vivah',
              style: TextStyle(
                fontSize: 21.0,
              ),
            ),
            SizedBox(height: size.height*0.004),
            Text(
              'Matrimony App',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[400]
              ),
            ),
            SizedBox(height: size.height*0.06),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome,',
                        style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Sign in to continue,',
                        style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height*0.06),
                  TextField(
                    cursorColor: subColor,
                    focusNode: focusNode,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Mobile no',
                      labelStyle: TextStyle(
                        color: Colors.grey[400],
                      ),
                      border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.grey[400]),

                      ),
                      focusedBorder: new OutlineInputBorder(
                        borderSide: new BorderSide(color: mainColor),

                      ),
                      hintStyle: TextStyle(
                        color: Colors.grey[400]
                      ),
                        hintText: hintText,
                        ),
                  ),
                  SizedBox(height: size.height*0.01),
                  RoundedButton(
                    text: 'Login',
                    press: (){},
                    textColor: Colors.white,
                    color: mainColor,
                    secondColor: subColor,
                  ),

                  InkWell(
                    splashColor: Colors.transparent,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                      },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ' I am New user?',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Sign up',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: mainColor,
                          ),
                        )
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}