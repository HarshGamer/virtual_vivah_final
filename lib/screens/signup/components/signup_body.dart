import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virtual_vivah_final/components/gender_button.dart';
import '../../../constant.dart';




class SignUpBody extends StatefulWidget {
  @override
  _SignUpBodyState createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  int _value = 0;
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
        hintText = 'Creating Profile for';
      }
      setState(() {

      });
    });
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      margin: EdgeInsets.only(top: 20.0),
      padding: EdgeInsets.all(20.0),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          SingleChildScrollView(
            child: Column(

              children: [
                Image(
                  image: AssetImage('assets/undraw_wedding.png'),
                  height: 200,
                  width: 250,
                ),

                Text(
                  'Sign up',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,

                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: ()=>setState(()=>_value = 0),
                      child: GenderButton(
                        icon: _value == 0 ? 'assets/marss.png' : 'assets/male.png',
                        name: 'Male',
                        color: _value == 0 ? Colors.blue[500] : Colors.white,
                        textColor: _value==0 ? Colors.white : Colors.black,

                      ),
                    ),
                    GestureDetector(
                      onTap: () => setState(() => _value = 1),
                      child: GenderButton(
                        icon: _value == 0 ? 'assets/femenine.png' : 'assets/femenines.png',
                        name: 'Female',
                        color: _value == 1 ? Colors.pink[500] : Colors.white,
                        textColor: _value==1 ? Colors.white : Colors.black,

                      ),
                    ),
                  ],
                ),
                TextField(
                  cursorColor: subColor,
                  focusNode: focusNode,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Creating Profile for',
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

              ],
            ),
          )
        ],
      ),
    );
  }
}
