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
  List<bool> _selections = List.generate(2, (index) => false);
  String dropdownValue;
  var currentSelectedValue;
  var value1;
  var value2;
  var value3;
  var value4;
  static const deviceTypes = ["Mac", "Windows", "Mobile"];
  static const deviceTypesOne = ["Mac", "Windows", "Mobile"];
  static const deviceTypesTwo = ["Mac", "Windows", "Mobile"];
  static const deviceTypesThree = ["Mac", "Windows", "Mobile"];
  List<bool> isSelected;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isSelected = [true, false];
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


      child: Stack(

        children: [
          SingleChildScrollView(
            padding: EdgeInsets.all(20.0),
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
                Container(
                  height: 50,
                  child: TextField(
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
                ),

                SizedBox(
                  height: 20,
                ),


                Container(
                  width: (MediaQuery.of(context).size.width-28),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Color(0x66aeaec0),
                    //     blurRadius: 13.02,
                    //     offset: Offset(6.51, 6.51),
                    //   ),
                    //   BoxShadow(
                    //     color: Color(0xffffffff),
                    //     blurRadius: 13.02,
                    //     offset: Offset(-4.34, -4.34),
                    //   ),
                    // ],
                    color: Colors.transparent,

                  ),
                  child: FormField<String>(
                    builder: (FormFieldState<String> state) {

                      return InputDecorator(
                        decoration: InputDecoration(
                            border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.grey[400]),

                            ),

                            focusedBorder: new OutlineInputBorder(
                              borderSide: new BorderSide(color: mainColor),

                            ),

                            contentPadding: EdgeInsets.only(left: 30,top: 3,right: 20)
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(

                            hint: Text("Birth Year",
                              style:  TextStyle(
                                  color: Colors.grey[600]
                                // shadows: <Shadow>[
                                //   Shadow(
                                //     offset: Offset(0.0, 4.0),
                                //     blurRadius: 4.0,
                                //     color: Color.fromARGB(50, 0, 0, 0),
                                //   ),
                                //
                                // ],
                              ),
                            ),
                            value: value1,
                            // isDense: true,
                            onChanged: (newValue) {
                              setState(() {
                                value1 = newValue;
                              });
                              print(value1);
                            },
                            items: deviceTypes.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: (MediaQuery.of(context).size.width-28),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Color(0x66aeaec0),
                    //     blurRadius: 13.02,
                    //     offset: Offset(6.51, 6.51),
                    //   ),
                    //   BoxShadow(
                    //     color: Color(0xffffffff),
                    //     blurRadius: 13.02,
                    //     offset: Offset(-4.34, -4.34),
                    //   ),
                    // ],
                    color: Colors.transparent,
                  ),
                  child: FormField<String>(
                    builder: (FormFieldState<String> state) {

                      return InputDecorator(
                        decoration: InputDecoration(


                            border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.grey[400]),

                            ),

                            focusedBorder: new OutlineInputBorder(
                              borderSide: new BorderSide(color: mainColor),

                            ),

                            contentPadding: EdgeInsets.only(left: 30,top: 3,right: 20)
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(

                            hint: Text("Country",
                              style:  TextStyle(
                                color: Colors.grey[600],
                                // shadows: <Shadow>[
                                //   Shadow(
                                //     offset: Offset(0.0, 4.0),
                                //     blurRadius: 4.0,
                                //     color: Color.fromARGB(50, 0, 0, 0),
                                //   ),
                                //
                                // ],
                              ),
                            ),
                            value: value2,
                            isDense: false,
                            onChanged: (newValue) {
                              setState(() {
                                value2 = newValue;
                              });
                              print(value2);
                            },
                            items: deviceTypesOne.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: (MediaQuery.of(context).size.width-28),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Color(0x66aeaec0),
                    //     blurRadius: 13.02,
                    //     offset: Offset(6.51, 6.51),
                    //   ),
                    //   BoxShadow(
                    //     color: Color(0xffffffff),
                    //     blurRadius: 13.02,
                    //     offset: Offset(-4.34, -4.34),
                    //   ),
                    // ],
                    color: Colors.transparent,
                  ),
                  child: FormField<String>(
                    builder: (FormFieldState<String> state) {

                      return InputDecorator(
                        decoration: InputDecoration(
                            border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.grey[400]),

                            ),

                            focusedBorder: new OutlineInputBorder(
                              borderSide: new BorderSide(color: mainColor),

                            ),

                            contentPadding: EdgeInsets.only(left: 30,top: 3,right: 20)
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(

                            hint: Text("State",
                              style:  TextStyle(
                                color: Colors.grey[600],
                                // shadows: <Shadow>[
                                //   Shadow(
                                //     offset: Offset(0.0, 4.0),
                                //     blurRadius: 4.0,
                                //     color: Color.fromARGB(50, 0, 0, 0),
                                //   ),
                                //
                                // ],
                              ),
                            ),
                            value: value3,
                            isDense: false,
                            onChanged: (newValue) {
                              setState(() {
                                value3 = newValue;
                              });
                              print(value3);
                            },
                            items: deviceTypesTwo.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: (MediaQuery.of(context).size.width-28),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Color(0x66aeaec0),
                    //     blurRadius: 13.02,
                    //     offset: Offset(6.51, 6.51),
                    //   ),
                    //   BoxShadow(
                    //     color: Color(0xffffffff),
                    //     blurRadius: 13.02,
                    //     offset: Offset(-4.34, -4.34),
                    //   ),
                    // ],
                    color: Colors.transparent,
                  ),
                  child: FormField<String>(
                    builder: (FormFieldState<String> state) {

                      return InputDecorator(
                        decoration: InputDecoration(
                            border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.grey[400]),

                            ),

                            focusedBorder: new OutlineInputBorder(
                              borderSide: new BorderSide(color: mainColor),

                            ),

                            contentPadding: EdgeInsets.only(left: 30,top: 3,right: 20)
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            isExpanded: true,
                            hint: Text("City",

                              style:  TextStyle(
                                color: Colors.grey[600],
                                // shadows: <Shadow>[
                                //   Shadow(
                                //     offset: Offset(0.0, 4.0),
                                //     blurRadius: 4.0,
                                //     color: Color.fromARGB(50, 0, 0, 0),
                                //   ),
                                //
                                // ],
                              ),
                            ),
                            value: currentSelectedValue,
                            isDense: false,
                            onChanged: (newValue) {
                              setState(() {
                                currentSelectedValue = newValue;
                              });
                              print(currentSelectedValue);
                            },
                            items: deviceTypesThree.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: (MediaQuery.of(context).size.width-28),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Color(0x66aeaec0),
                    //     blurRadius: 13.02,
                    //     offset: Offset(6.51, 6.51),
                    //   ),
                    //   BoxShadow(
                    //     color: Color(0xffffffff),
                    //     blurRadius: 13.02,
                    //     offset: Offset(-4.34, -4.34),
                    //   ),
                    // ],
                    color: Colors.transparent,
                  ),
                  child: FormField<String>(
                    builder: (FormFieldState<String> state) {

                      return InputDecorator(
                        decoration: InputDecoration(
                            border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.grey[400]),

                            ),

                            focusedBorder: new OutlineInputBorder(
                              borderSide: new BorderSide(color: mainColor),

                            ),

                            contentPadding: EdgeInsets.only(left: 30,top: 3,right: 20)
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            isExpanded: true,
                            hint: Text("Gender",

                              style:  TextStyle(
                                color: Colors.grey[600],
                                // shadows: <Shadow>[
                                //   Shadow(
                                //     offset: Offset(0.0, 4.0),
                                //     blurRadius: 4.0,
                                //     color: Color.fromARGB(50, 0, 0, 0),
                                //   ),
                                //
                                // ],
                              ),
                            ),
                            value: value4,
                            isDense: true,
                            onChanged: (newValue) {
                              setState(() {
                                value4 = newValue;
                              });
                              print(value4);
                            },
                            items: deviceTypesThree.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ),
                ),

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: size.height *0.85),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image(
                  image: AssetImage('assets/next.png'),
                  height: 100,
                  width: 100,
                ),
              ],
            ),
          ),
        ],



      ),
    );
  }
}
