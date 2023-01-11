import 'dart:io';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:pushable_button/pushable_button.dart';
import 'package:x_o/game.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: MyApp(pageto: 1),
  ));
}

class MyApp extends StatefulWidget {
  final int pageto;
  const MyApp({Key? key, required this.pageto}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late PageController pagecontrol;
  GlobalKey<FormState> formstate = new GlobalKey<FormState>();

  var loses;
  var draws;
  var wins;

  sharedcall() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      loses = (prefs.getInt("loses") ?? 0);
      draws = (prefs.getInt("draws") ?? 0);
      wins = (prefs.getInt("wins") ?? 0);
      username = (prefs.getString("username") ?? "uesr8735");
      colorXstring = (prefs.getString("colorx") ?? "black");
      colorOstring = (prefs.getString("coloro") ?? "black");
      shapecolorstring = (prefs.getString("shapecolor") ?? "black");
      colorchange("x", colorXstring);
      colorchange("o", colorOstring);
      colorchange("shape", shapecolorstring);
    });
  }

  colorchange(xoshape, color) {
    if (color == "blue") {
      if (xoshape == "x") {
        colorX = Colors.blue;
      } else if (xoshape == "o") {
        colorO = Colors.blue;
      } else if (xoshape == "shape") {
        shapecolor = Colors.blue;
      }
    }
    if (color == "red") {
      if (xoshape == "x") {
        colorX = Colors.red;
      } else if (xoshape == "o") {
        colorO = Colors.red;
      } else if (xoshape == "shape") {
        shapecolor = Colors.red;
      }
    }
    if (color == "orange") {
      if (xoshape == "x") {
        colorX = Colors.orange;
      } else if (xoshape == "o") {
        colorO = Colors.orange;
      } else if (xoshape == "shape") {
        shapecolor = Colors.orange;
      }
    }
    if (color == "yellow") {
      if (xoshape == "x") {
        colorX = Colors.yellow;
      } else if (xoshape == "o") {
        colorO = Colors.yellow;
      } else if (xoshape == "shape") {
        shapecolor = Colors.yellow;
      }
    }
    if (color == "black") {
      if (xoshape == "x") {
        colorX = Colors.black;
      } else if (xoshape == "o") {
        colorO = Colors.black;
      } else if (xoshape == "shape") {
        shapecolor = Colors.black;
      }
    }
  }

  setusername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var un;
    if (prefs.containsKey("username") == false) {
      AwesomeDialog(
        context: context,
        dismissOnTouchOutside: false,
        dialogType: DialogType.WARNING,
        animType: AnimType.SCALE,
        body: Column(
          children: [
            Text("What is your name ??"),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Form(
                key: formstate,
                child: TextFormField(
                  minLines: 1,
                  maxLines: 2,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  textInputAction: TextInputAction.done,
                  validator: (username) {
                    if (username != null) {
                      if (username.length < 3) {
                        return "username is to short";
                      }
                    } else {
                      return "username is to short";
                    }
                  },
                  maxLength: 20,
                  decoration: InputDecoration(
                      labelText: "Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue))),
                  onSaved: (val) {
                    un = val;
                    setState(() {});
                  },
                ),
              ),
            ),
          ],
        ),
        btnOkText: "ok",
        btnOkOnPress: () async {
          var formdata = formstate.currentState;
          if (formdata != null) {
            if (formdata.validate()) {
              formdata.save();
              SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.setString("username", un);
              sharedcall();
            }
          }
        },
      )..show();
    }
  }

  var username;

  bool comhum = false;
  Color comcolor = Colors.blue;
  Color humcolor = Colors.black;

  var colorX;
  var colorXstring;
  var colorO;
  var colorOstring;
  var shapecolor;
  var shapecolorstring;

  bool xo = false;
  Color xColor = Colors.blue;
  Color oColor = Colors.black;

  var hardness = 1.0;
  Color sliderunColor = Color(0xff90caf9);
  Color sliderColor = Colors.blue;

  @override
  void initState() {
    pagecontrol = new PageController(initialPage: widget.pageto);
    setusername();

    sharedcall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    Size size = MediaQuery.of(context).size;
    DateTime pre_backpress = DateTime.now();
    return WillPopScope(
        onWillPop: () async {
          //show snackbar
          AwesomeDialog(
              context: context,
              dialogType: DialogType.QUESTION,
              animType: AnimType.SCALE,
              title: "leaving ??",
              desc: 'Do you want to leave ?',
              btnCancelOnPress: () {},
              btnCancelText: "No",
              btnOkOnPress: () {
                SystemNavigator.pop();
              },
              btnOkText: "leave")
            ..show();

          return false;
        },
        child: Scaffold(
            body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: pagecontrol,
          children: [
            Container(
              margin: EdgeInsets.only(top: size.height / 6),
              child: ListView(
                children: [
                  Center(
                    child: Container(
                      width: size.width * 0.85,
                      height: size.height * 0.7,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 20,
                                color: Color(0xffc8c8c8),
                                spreadRadius: 15)
                          ]),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment(1, 0),
                            child: Transform.rotate(
                              angle: 3.14,
                              child: IconButton(
                                  onPressed: () {
                                    pagecontrol.animateToPage(1,
                                        duration: Duration(milliseconds: 600),
                                        curve: Curves.easeIn);
                                    setusername();
                                    sharedcall();
                                  },
                                  icon:
                                      Icon(Icons.arrow_back_rounded, size: 35)),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Username : ",
                            style: TextStyle(
                                fontSize: 22, color: Color(0xff929097)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: TextFormField(
                              minLines: 1,
                              maxLines: 2,
                              maxLength: 15,
                              initialValue: username,
                              textInputAction: TextInputAction.done,
                              onChanged: (val) async {
                                SharedPreferences prefs =
                                    await SharedPreferences.getInstance();
                                prefs.setString("username", val);
                                setState(() {});
                              },
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.person,
                                      size: 30, color: Colors.blue),
                                  labelText: "Name",
                                  labelStyle: TextStyle(color: Colors.blue),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.blue))),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: DropdownButton(
                              hint: Container(
                                padding: EdgeInsets.only(left: 10, bottom: 5),
                                width: size.width * 0.50,
                                child: Row(children: [
                                  Icon(
                                    Icons.close,
                                    color: colorX,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("change X color",
                                      style: TextStyle(color: colorX)),
                                ]),
                              ),
                              items: [
                                DropdownMenuItem(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.close,
                                          color: Colors.black,
                                          size: 30,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("black"),
                                      ]),
                                  value: "black",
                                ),
                                DropdownMenuItem(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.close,
                                          color: Colors.blue,
                                          size: 30,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("blue"),
                                      ]),
                                  value: "blue",
                                ),
                                DropdownMenuItem(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.close,
                                          color: Colors.red,
                                          size: 30,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("red"),
                                      ]),
                                  value: "red",
                                ),
                                DropdownMenuItem(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.close,
                                          color: Colors.orange,
                                          size: 30,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("orange"),
                                      ]),
                                  value: "orange",
                                ),
                                DropdownMenuItem(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.close,
                                          color: Colors.yellow,
                                          size: 30,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("yellow"),
                                      ]),
                                  value: "yellow",
                                ),
                              ],
                              onChanged: (val) async {
                                print(colorXstring);
                                colorXstring = val;
                                SharedPreferences prefs =
                                    await SharedPreferences.getInstance();
                                prefs.setString("colorx", colorXstring);
                                setState(() {});
                                print(colorXstring);
                                colorchange("x", colorXstring);
                              },
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              child: DropdownButton(
                            hint: Container(
                              padding: EdgeInsets.only(left: 10, bottom: 5),
                              width: size.width * 0.50,
                              child: Row(children: [
                                Icon(
                                  Icons.circle_outlined,
                                  color: colorO,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("change O color",
                                    style: TextStyle(color: colorO)),
                              ]),
                            ),
                            items: [
                              DropdownMenuItem(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.circle_outlined,
                                        color: Colors.black,
                                        size: 30,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("black"),
                                    ]),
                                value: "black",
                              ),
                              DropdownMenuItem(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.circle_outlined,
                                        color: Colors.blue,
                                        size: 30,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("blue"),
                                    ]),
                                value: "blue",
                              ),
                              DropdownMenuItem(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.circle_outlined,
                                        color: Colors.red,
                                        size: 30,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("red"),
                                    ]),
                                value: "red",
                              ),
                              DropdownMenuItem(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.circle_outlined,
                                        color: Colors.orange,
                                        size: 30,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("orange"),
                                    ]),
                                value: "orange",
                              ),
                              DropdownMenuItem(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.circle_outlined,
                                        color: Colors.yellow,
                                        size: 30,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("yellow"),
                                    ]),
                                value: "yellow",
                              ),
                            ],
                            onChanged: (val) async {
                              print(colorOstring);
                              colorOstring = val;
                              SharedPreferences prefs =
                                  await SharedPreferences.getInstance();
                              prefs.setString("coloro", colorOstring);
                              setState(() {});
                              print(colorOstring);
                              colorchange("o", colorOstring);
                            },
                          )),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              child: DropdownButton(
                            hint: Container(
                              padding: EdgeInsets.only(left: 10, bottom: 5),
                              width: size.width * 0.50,
                              child: Row(children: [
                                Icon(
                                  Icons.grid_3x3_rounded,
                                  color: shapecolor,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("change # color",
                                    style: TextStyle(color: shapecolor)),
                              ]),
                            ),
                            items: [
                              DropdownMenuItem(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.grid_3x3_rounded,
                                        color: Colors.black,
                                        size: 30,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("black"),
                                    ]),
                                value: "black",
                              ),
                              DropdownMenuItem(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.grid_3x3_rounded,
                                        color: Colors.blue,
                                        size: 30,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("blue"),
                                    ]),
                                value: "blue",
                              ),
                              DropdownMenuItem(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.grid_3x3_rounded,
                                        color: Colors.red,
                                        size: 30,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("red"),
                                    ]),
                                value: "red",
                              ),
                              DropdownMenuItem(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.grid_3x3_rounded,
                                        color: Colors.orange,
                                        size: 30,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("orange"),
                                    ]),
                                value: "orange",
                              ),
                              DropdownMenuItem(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.grid_3x3_rounded,
                                        color: Colors.yellow,
                                        size: 30,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("yellow"),
                                    ]),
                                value: "yellow",
                              ),
                            ],
                            onChanged: (val) async {
                              print(shapecolorstring);
                              shapecolorstring = val;
                              SharedPreferences prefs =
                                  await SharedPreferences.getInstance();
                              prefs.setString("shapecolor", shapecolorstring);
                              setState(() {});
                              print(shapecolorstring);
                              colorchange("shape", shapecolorstring);
                            },
                          )),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              onPressed: () async {
                                SharedPreferences prefs =
                                    await SharedPreferences.getInstance();
                                prefs.setString("colorx", "black");
                                colorchange("x", "black");
                                prefs.setString("coloro", "black");
                                colorchange("o", "black");
                                prefs.setString("shapecolor", "black");
                                colorchange("shape", "black");
                                setState(() {});
                              },
                              child: Text("set as defult"))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListView(
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            left: 20, right: 20, top: 40, bottom: 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xff10cab7),
                                  boxShadow: [
                                    BoxShadow(
                                        color:
                                            Color(0xff10cab7).withOpacity(0.3),
                                        spreadRadius: 2,
                                        offset: Offset(3, 6),
                                        blurRadius: 5)
                                  ],
                                  borderRadius: BorderRadius.circular(45.0)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.person,
                                      size: 35, color: Colors.white),
                                  SizedBox(width: 10),
                                  Text("username  : ",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white)),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("$username",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Container(
                              height: 80,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0xffc8c8c8),
                                        spreadRadius: 2,
                                        offset: Offset(5, 10),
                                        blurRadius: 5)
                                  ],
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("loses \n $loses",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.red)),
                                  Container(
                                    width: 2,
                                    height: 30,
                                    color: Colors.black45,
                                  ),
                                  Text("Draws \n $draws",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.yellow[700])),
                                  Container(
                                    width: 2,
                                    height: 30,
                                    color: Colors.black45,
                                  ),
                                  Text("Wins \n $wins",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.green)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 80, left: 20, right: 20),
                        height: 300,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            PushableButton(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.grid_3x3,
                                        size: 50, color: Colors.blue[200]),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text('play',
                                        style: TextStyle(
                                            fontSize: 40,
                                            color: Colors.blue[200])),
                                  ],
                                ),
                                height: 60,
                                elevation: 8,
                                hslColor: HSLColor.fromColor(Colors.blue),
                                shadow: BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 2),
                                ),
                                onPressed: () {
                                  print("object");
                                  pagecontrol.animateToPage(2,
                                      duration: Duration(milliseconds: 600),
                                      curve: Curves.easeIn);
                                }),
                            PushableButton(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.settings,
                                        size: 50, color: Colors.green[200]),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text('options',
                                        style: TextStyle(
                                            fontSize: 40,
                                            color: Colors.green[200])),
                                  ],
                                ),
                                height: 60,
                                elevation: 8,
                                hslColor: HSLColor.fromColor(Colors.green),
                                shadow: BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 2),
                                ),
                                onPressed: () {
                                  print("object");
                                  pagecontrol.animateToPage(0,
                                      duration: Duration(milliseconds: 600),
                                      curve: Curves.easeIn);
                                }),
                            PushableButton(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.exit_to_app_rounded,
                                      size: 50, color: Colors.red[200]),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text('exit',
                                      style: TextStyle(
                                          fontSize: 40,
                                          color: Colors.red[200])),
                                ],
                              ),
                              height: 60,
                              elevation: 8,
                              hslColor: HSLColor.fromColor(Colors.red),
                              shadow: BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 2),
                              ),
                              onPressed: () {
                                AwesomeDialog(
                                    context: context,
                                    dialogType: DialogType.QUESTION,
                                    animType: AnimType.SCALE,
                                    title: "leaving ??",
                                    desc: 'Do you want to leave ?',
                                    btnCancelOnPress: () {},
                                    btnCancelText: "No",
                                    btnOkOnPress: () {
                                      SystemNavigator.pop();
                                    },
                                    btnOkText: "leave")
                                  ..show();
                              },
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Center(
              child: Container(
                width: size.width * 0.85,
                height: size.height * 0.7,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 20,
                          color: Color(0xffc8c8c8),
                          spreadRadius: 15)
                    ]),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment(-1, 0),
                      child: IconButton(
                          onPressed: () {
                            pagecontrol.animateToPage(1,
                                duration: Duration(milliseconds: 600),
                                curve: Curves.easeIn);
                          },
                          icon: Icon(Icons.arrow_back_rounded, size: 35)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        child: Text("who do you want to play with ?? ",
                            style: TextStyle(
                                fontSize: 18, color: Color(0xff909295)))),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    comhum = false;
                                    comcolor = Colors.blue;
                                    humcolor = Colors.black;
                                    sliderunColor = Color(0xff90caf9);
                                    sliderColor = Colors.blue;
                                  });
                                },
                                icon: Icon(Icons.computer_rounded,
                                    size: 40, color: comcolor)),
                            comhum == false
                                ? Text("computer",
                                    style: TextStyle(color: Colors.blue))
                                : Text(""),
                          ],
                        ),
                        Container(width: 2, height: 40, color: Colors.grey),
                        Column(
                          children: [
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    comhum = true;
                                    comcolor = Colors.black;
                                    humcolor = Colors.red;

                                    sliderColor = Colors.grey;
                                    sliderunColor = Color(0xffeeeeee);
                                  });
                                },
                                icon: Icon(Icons.person,
                                    size: 40, color: humcolor)),
                            comhum == true
                                ? Text("human",
                                    style: TextStyle(color: Colors.red))
                                : Text(""),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        child: Text("X   or   O   ??",
                            style: TextStyle(
                                fontSize: 18, color: Color(0xff909295)))),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            IconButton(
                                onPressed: comhum == false
                                    ? () {
                                        setState(() {
                                          xo = false;
                                          xColor = Colors.blue;
                                          oColor = Colors.black;
                                        });
                                      }
                                    : null,
                                color: xColor,
                                disabledColor: Colors.grey,
                                icon: Icon(
                                  Icons.close_rounded,
                                  size: 40,
                                )),
                          ],
                        ),
                        Container(width: 2, height: 40, color: Colors.grey),
                        Column(
                          children: [
                            IconButton(
                                onPressed: comhum == false
                                    ? () {
                                        setState(() {
                                          xo = true;
                                          xColor = Colors.black;
                                          oColor = Colors.red;
                                        });
                                      }
                                    : null,
                                color: oColor,
                                disabledColor: Colors.grey,
                                icon: Icon(
                                  Icons.circle_outlined,
                                  size: 40,
                                )),
                          ],
                        ),
                      ],
                    ),
                    Column(children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text("choose computer level",
                          style: TextStyle(
                              fontSize: 18, color: Color(0xff909295))),
                      SizedBox(
                        height: 10,
                      ),
                      Slider(
                        divisions: 2,
                        inactiveColor: sliderunColor,
                        activeColor: sliderColor,
                        label: "${hardness.toInt()}",
                        min: 1,
                        max: 3,
                        value: hardness,
                        onChanged: comhum == false
                            ? (val) {
                                setState(() {
                                  hardness = val;
                                });
                              }
                            : null,
                      )
                    ]),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 200,
                      child: PushableButton(
                          child: Text('Go !',
                              style: TextStyle(
                                  fontSize: 30, color: Colors.blue[200])),
                          height: 50,
                          elevation: 8,
                          hslColor: HSLColor.fromColor(Colors.blue),
                          shadow: BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 2),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Game(
                                        human: comhum,
                                        hard: hardness.toInt(),
                                        iso: xo)));
                          }),
                    )
                  ],
                ),
              ),
            )
          ],
        )));
  }
}
