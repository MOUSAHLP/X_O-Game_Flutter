import 'dart:math';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';
import 'package:x_o/main.dart';

class Game extends StatefulWidget {
  final bool human;
  final int hard;
  final bool iso;
  const Game(
      {Key? key, required this.human, required this.hard, required this.iso})
      : super(key: key);
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> with TickerProviderStateMixin {
  var bordercolor = Colors.black;
  var playerx;
  var playero;

  String place1 = "";
  String place2 = "";
  String place3 = "";
  String place4 = "";
  String place5 = "";
  String place6 = "";
  String place7 = "";
  String place8 = "";
  String place9 = "";

  Color place1colorx = Colors.black;
  Color place1coloro = Colors.black;
  Color place2colorx = Colors.black;
  Color place2coloro = Colors.black;
  Color place3colorx = Colors.black;
  Color place3coloro = Colors.black;
  Color place4colorx = Colors.black;
  Color place4coloro = Colors.black;
  Color place5colorx = Colors.black;
  Color place5coloro = Colors.black;
  Color place6colorx = Colors.black;
  Color place6coloro = Colors.black;
  Color place7colorx = Colors.black;
  Color place7coloro = Colors.black;
  Color place8colorx = Colors.black;
  Color place8coloro = Colors.black;
  Color place9colorx = Colors.black;
  Color place9coloro = Colors.black;

  Color playercolorx = Colors.black;
  Color playercoloro = Colors.black;

  setcolor() {
    if (colorX != null && colorO != null) {
      place1colorx = colorX;
      place1coloro = colorO;
      place2colorx = colorX;
      place2coloro = colorO;
      place3colorx = colorX;
      place3coloro = colorO;
      place4colorx = colorX;
      place4coloro = colorO;
      place5colorx = colorX;
      place5coloro = colorO;
      place6colorx = colorX;
      place6coloro = colorO;
      place7colorx = colorX;
      place7coloro = colorO;
      place8colorx = colorX;
      place8coloro = colorO;
      place9colorx = colorX;
      place9coloro = colorO;

      bordercolor = shapecolor;

      playercolorx = colorX;
      playercoloro = colorO;
    }

    setState(() {});
  }

  late AnimationController controller1;
  late Animation animation1;
  late AnimationController controller2;
  late Animation animation2;
  late AnimationController controller3;
  late Animation animation3;
  late AnimationController controller4;
  late Animation animation4;
  late AnimationController controller5;
  late Animation animation5;
  late AnimationController controller6;
  late Animation animation6;
  late AnimationController controller7;
  late Animation animation7;
  late AnimationController controller8;
  late Animation animation8;
  late AnimationController controller9;
  late Animation animation9;

  double size1 = 0;
  double size2 = 0;
  double size3 = 0;
  double size4 = 0;
  double size5 = 0;
  double size6 = 0;
  double size7 = 0;
  double size8 = 0;
  double size9 = 0;

  Future replace(var num, String place) async {
    switch (num) {
      case 1:
        place1 = place;
        controller1 = AnimationController(
          vsync: this,
          duration: Duration(milliseconds: 300),
        );
        animation1 = Tween(
          begin: 0.0,
          end: 85.0,
        ).animate(controller1)
          ..addListener(() {
            setState(() {
              size1 = animation1.value;
              print(animation1.value);
            });
          });
        controller1..forward();
        break;
      case 2:
        place2 = place;
        controller2 = AnimationController(
          vsync: this,
          duration: Duration(milliseconds: 300),
        );
        animation2 = Tween(
          begin: 0.0,
          end: 85.0,
        ).animate(controller2)
          ..addListener(() {
            setState(() {
              size2 = animation2.value;
              print(animation2.value);
            });
          });
        controller2..forward();
        break;
      case 3:
        place3 = place;
        controller3 = AnimationController(
          vsync: this,
          duration: Duration(milliseconds: 300),
        );
        animation3 = Tween(
          begin: 0.0,
          end: 85.0,
        ).animate(controller3)
          ..addListener(() {
            setState(() {
              size3 = animation3.value;
              print(animation3.value);
            });
          });
        controller3..forward();
        break;
      case 4:
        place4 = place;
        controller4 = AnimationController(
          vsync: this,
          duration: Duration(milliseconds: 300),
        );
        animation4 = Tween(
          begin: 0.0,
          end: 85.0,
        ).animate(controller4)
          ..addListener(() {
            setState(() {
              size4 = animation4.value;
              print(animation4.value);
            });
          });
        controller4..forward();
        break;
      case 5:
        place5 = place;
        controller5 = AnimationController(
          vsync: this,
          duration: Duration(milliseconds: 300),
        );
        animation5 = Tween(
          begin: 0.0,
          end: 85.0,
        ).animate(controller5)
          ..addListener(() {
            setState(() {
              size5 = animation5.value;
              print(animation5.value);
            });
          });
        controller5..forward();
        break;
      case 6:
        place6 = place;
        controller6 = AnimationController(
          vsync: this,
          duration: Duration(milliseconds: 300),
        );
        animation6 = Tween(
          begin: 0.0,
          end: 85.0,
        ).animate(controller6)
          ..addListener(() {
            setState(() {
              size6 = animation6.value;
              print(animation6.value);
            });
          });
        controller6..forward();
        break;
      case 7:
        place7 = place;
        controller7 = AnimationController(
          vsync: this,
          duration: Duration(milliseconds: 300),
        );
        animation7 = Tween(
          begin: 0.0,
          end: 85.0,
        ).animate(controller7)
          ..addListener(() {
            setState(() {
              size7 = animation7.value;
              print(animation7.value);
            });
          });
        controller7..forward();
        break;
      case 8:
        place8 = place;
        controller8 = AnimationController(
          vsync: this,
          duration: Duration(milliseconds: 300),
        );
        animation8 = Tween(
          begin: 0.0,
          end: 85.0,
        ).animate(controller8)
          ..addListener(() {
            setState(() {
              size8 = animation8.value;
              print(animation8.value);
            });
          });
        controller8..forward();
        break;
      case 9:
        place9 = place;
        controller9 = AnimationController(
          vsync: this,
          duration: Duration(milliseconds: 300),
        );
        animation9 = Tween(
          begin: 0.0,
          end: 85.0,
        ).animate(controller9)
          ..addListener(() {
            setState(() {
              size9 = animation9.value;
              print(animation9.value);
            });
          });
        controller9..forward();
        break;
    }
    setState(() {});
  }

  statistics() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt("owins", 0);
  }

  computerlvl1() {
    var random = 1 + Random().nextInt(10 - 1);
    bool randomcheck = false;
    while (randomcheck == false) {
      if (random == 1 && place1 == "") {
        randomcheck = true;
      } else if (random == 2 && place2 == "") {
        randomcheck = true;
      } else if (random == 3 && place3 == "") {
        randomcheck = true;
      } else if (random == 4 && place4 == "") {
        randomcheck = true;
      } else if (random == 5 && place5 == "") {
        randomcheck = true;
      } else if (random == 6 && place6 == "") {
        randomcheck = true;
      } else if (random == 7 && place7 == "") {
        randomcheck = true;
      } else if (random == 8 && place8 == "") {
        randomcheck = true;
      } else if (random == 9 && place9 == "") {
        randomcheck = true;
      } else {
        random = 1 + Random().nextInt(10 - 1);
      }
    }
    return random;
  }

  computerlvl2(var enemy) {
    if (place2 == enemy && place3 == enemy && place1 == "") {
      return 1;
    } else if (place1 == enemy && place3 == enemy && place2 == "") {
      return 2;
    } else if (place1 == enemy && place2 == enemy && place3 == "") {
      return 3;
    } else if (place5 == enemy && place6 == enemy && place4 == "") {
      return 4;
    } else if (place4 == enemy && place6 == enemy && place5 == "") {
      return 5;
    } else if (place4 == enemy && place5 == enemy && place6 == "") {
      return 6;
    } else if (place8 == enemy && place9 == enemy && place7 == "") {
      return 7;
    } else if (place7 == enemy && place9 == enemy && place8 == "") {
      return 8;
    } else if (place7 == enemy && place8 == enemy && place9 == "") {
      return 9;
    } else if (place4 == enemy && place7 == enemy && place1 == "") {
      return 1;
    } else if (place1 == enemy && place7 == enemy && place4 == "") {
      return 4;
    } else if (place1 == enemy && place4 == enemy && place7 == "") {
      return 7;
    } else if (place5 == enemy && place8 == enemy && place2 == "") {
      return 2;
    } else if (place2 == enemy && place8 == enemy && place5 == "") {
      return 5;
    } else if (place2 == enemy && place5 == enemy && place8 == "") {
      return 8;
    } else if (place6 == enemy && place9 == enemy && place3 == "") {
      return 3;
    } else if (place3 == enemy && place9 == enemy && place6 == "") {
      return 6;
    } else if (place3 == enemy && place6 == enemy && place9 == "") {
      return 9;
    } else if (place5 == enemy && place9 == enemy && place1 == "") {
      return 1;
    } else if (place1 == enemy && place9 == enemy && place5 == "") {
      return 5;
    } else if (place1 == enemy && place5 == enemy && place9 == "") {
      return 9;
    } else if (place5 == enemy && place7 == enemy && place3 == "") {
      return 3;
    } else if (place3 == enemy && place7 == enemy && place5 == "") {
      return 5;
    } else if (place3 == enemy && place5 == enemy && place7 == "") {
      return 7;
    } else {
      return computerlvl1();
    }
  }

  computerlvl3(var enemy) {
    var me;
    var firstmove = 2;
    if (enemy == "x") {
      me = "o";
    } else {
      me = "x";
    }

    if (place1 == "" &&
        place2 == "" &&
        place3 == "" &&
        place4 == "" &&
        place5 == "" &&
        place6 == "" &&
        place7 == "" &&
        place8 == "" &&
        place9 == "") {
      while (true) {
        firstmove = computerlvl1();
        if (firstmove == 1 ||
            firstmove == 3 ||
            firstmove == 7 ||
            firstmove == 9 ||
            firstmove == 5) {
          break;
        }
      }
      return firstmove;
    } else if (place2 == me && place3 == me && place1 == "") {
      return 1;
    } else if (place1 == me && place3 == me && place2 == "") {
      return 2;
    } else if (place1 == me && place2 == me && place3 == "") {
      return 3;
    } else if (place5 == me && place6 == me && place4 == "") {
      return 4;
    } else if (place4 == me && place6 == me && place5 == "") {
      return 5;
    } else if (place4 == me && place5 == me && place6 == "") {
      return 6;
    } else if (place8 == me && place9 == me && place7 == "") {
      return 7;
    } else if (place7 == me && place9 == me && place8 == "") {
      return 8;
    } else if (place7 == me && place8 == me && place9 == "") {
      return 9;
    } else if (place4 == me && place7 == me && place1 == "") {
      return 1;
    } else if (place1 == me && place7 == me && place4 == "") {
      return 4;
    } else if (place1 == me && place4 == me && place7 == "") {
      return 7;
    } else if (place5 == me && place8 == me && place2 == "") {
      return 2;
    } else if (place2 == me && place8 == me && place5 == "") {
      return 5;
    } else if (place2 == me && place5 == me && place8 == "") {
      return 8;
    } else if (place6 == me && place9 == me && place3 == "") {
      return 3;
    } else if (place3 == me && place9 == me && place6 == "") {
      return 6;
    } else if (place3 == me && place6 == me && place9 == "") {
      return 9;
    } else if (place5 == me && place9 == me && place1 == "") {
      return 1;
    } else if (place1 == me && place9 == me && place5 == "") {
      return 5;
    } else if (place1 == me && place5 == me && place9 == "") {
      return 9;
    } else if (place5 == me && place7 == me && place3 == "") {
      return 3;
    } else if (place3 == me && place7 == me && place5 == "") {
      return 5;
    } else if (place3 == me && place5 == me && place7 == "") {
      return 7;
    } else {
      return computerlvl2(enemy);
    }
  }

  check(var place) {
    if (place1 == place && place2 == place && place3 == place) {
      place1colorx = Colors.green;
      place1coloro = Colors.green;
      place2colorx = Colors.green;
      place2coloro = Colors.green;
      place3colorx = Colors.green;
      place3coloro = Colors.green;
      return place;
    } else if (place4 == place && place5 == place && place6 == place) {
      place4colorx = Colors.green;
      place4coloro = Colors.green;
      place5colorx = Colors.green;
      place5coloro = Colors.green;
      place6colorx = Colors.green;
      place6coloro = Colors.green;
      return place;
    } else if (place7 == place && place8 == place && place9 == place) {
      place7colorx = Colors.green;
      place7coloro = Colors.green;
      place8colorx = Colors.green;
      place8coloro = Colors.green;
      place9colorx = Colors.green;
      place9coloro = Colors.green;
      return place;
    } else if (place1 == place && place4 == place && place7 == place) {
      place1colorx = Colors.green;
      place1coloro = Colors.green;
      place4colorx = Colors.green;
      place4coloro = Colors.green;
      place7colorx = Colors.green;
      place7coloro = Colors.green;
      return place;
    } else if (place2 == place && place5 == place && place8 == place) {
      place2colorx = Colors.green;
      place2coloro = Colors.green;
      place5colorx = Colors.green;
      place5coloro = Colors.green;
      place8colorx = Colors.green;
      place8coloro = Colors.green;
      return place;
    } else if (place3 == place && place6 == place && place9 == place) {
      place3colorx = Colors.green;
      place3coloro = Colors.green;
      place6colorx = Colors.green;
      place6coloro = Colors.green;
      place9colorx = Colors.green;
      place9coloro = Colors.green;
      return place;
    } else if (place1 == place && place5 == place && place9 == place) {
      place1colorx = Colors.green;
      place1coloro = Colors.green;
      place5colorx = Colors.green;
      place5coloro = Colors.green;
      place9colorx = Colors.green;
      place9coloro = Colors.green;
      return place;
    } else if (place3 == place && place5 == place && place7 == place) {
      place3colorx = Colors.green;
      place3coloro = Colors.green;
      place5colorx = Colors.green;
      place5coloro = Colors.green;
      place7colorx = Colors.green;
      place7coloro = Colors.green;
      return place;
    } else if (place1 != "" &&
        place2 != "" &&
        place3 != "" &&
        place4 != "" &&
        place5 != "" &&
        place6 != "" &&
        place7 != "" &&
        place8 != "" &&
        place9 != "") {
      return "draw";
    } else {
      return "";
    }
  }

  game(var num, String place) async {
    if (place == "x") {
      await replace(num, place);
      if (check("x") == "x") {
        statincrement("win");
        return AwesomeDialog(
            context: context,
            dialogType: DialogType.SUCCES,
            animType: AnimType.SCALE,
            title: " X won",
            desc: 'Do you want to play again \n',
            btnCancelOnPress: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => MyApp(pageto: 1)));
            },
            btnCancelText: "Home Page",
            btnOkOnPress: () {
              place1 = "";
              place2 = "";
              place3 = "";
              place4 = "";
              place5 = "";
              place6 = "";
              place7 = "";
              place8 = "";
              place9 = "";
              setcolor();
              counter = 0;
              if (widget.iso == true) {
                replace(computerlvl3("o"), "x");
              }
              setState(() {});
            },
            btnOkText: "play again")
          ..show();
      } else if (check("x") == "draw") {
        statincrement("draw");

        return AwesomeDialog(
            context: context,
            dialogType: DialogType.WARNING,
            animType: AnimType.SCALE,
            title: "draw",
            desc: 'Do you want to play again \n',
            btnCancelOnPress: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => MyApp(pageto: 1)));
            },
            btnCancelText: "Home Page",
            btnOkOnPress: () {
              place1 = "";
              place2 = "";
              place3 = "";
              place4 = "";
              place5 = "";
              place6 = "";
              place7 = "";
              place8 = "";
              place9 = "";
              setcolor();
              counter = 0;
              if (widget.iso == true) {
                replace(computerlvl3("o"), "x");
              }
              setState(() {});
            },
            btnOkText: "play again")
          ..show();
      }
      if (check("x") != "x" && check("x") != "draw") {
        if (widget.hard == 1) {
          await replace(computerlvl1(), "o");
        } else if (widget.hard == 2) {
          await replace(computerlvl2("x"), "o");
        } else if (widget.hard == 3) {
          await replace(computerlvl3("x"), "o");
        }
        if (check("o") == "o") {
          statincrement("lose");

          return AwesomeDialog(
              context: context,
              dialogType: DialogType.SUCCES,
              animType: AnimType.SCALE,
              title: " O won",
              desc: 'Do you want to play again \n',
              btnCancelOnPress: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => MyApp(pageto: 1)));
              },
              btnCancelText: "Home Page",
              btnOkOnPress: () {
                place1 = "";
                place2 = "";
                place3 = "";
                place4 = "";
                place5 = "";
                place6 = "";
                place7 = "";
                place8 = "";
                place9 = "";
                setcolor();
                counter = 0;
                if (widget.iso == true) {
                  replace(computerlvl3("o"), "x");
                }
                setState(() {});
              },
              btnOkText: "play again")
            ..show();
        } else if (check("o") == "draw") {
          statincrement("draw");

          return AwesomeDialog(
              context: context,
              dialogType: DialogType.WARNING,
              animType: AnimType.SCALE,
              title: "draw",
              desc: 'Do you want to play again \n',
              btnCancelOnPress: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => MyApp(pageto: 1)));
              },
              btnCancelText: "Home Page",
              btnOkOnPress: () {
                place1 = "";
                place2 = "";
                place3 = "";
                place4 = "";
                place5 = "";
                place6 = "";
                place7 = "";
                place8 = "";
                place9 = "";
                setcolor();
                counter = 0;
                if (widget.iso == true) {
                  replace(computerlvl3("o"), "x");
                }
                setState(() {});
              },
              btnOkText: "play again")
            ..show();
        }
      }
    } else if (place == "o") {
      if (check("x") != "x" && check("x") != "draw") {
        await replace(num, place);
        if (check("o") == "o") {
          statincrement("win");

          return AwesomeDialog(
              context: context,
              dialogType: DialogType.SUCCES,
              animType: AnimType.SCALE,
              title: " O won",
              desc: 'Do you want to play again \n',
              btnCancelOnPress: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => MyApp(pageto: 1)));
              },
              btnCancelText: "Home Page",
              btnOkOnPress: () {
                place1 = "";
                place2 = "";
                place3 = "";
                place4 = "";
                place5 = "";
                place6 = "";
                place7 = "";
                place8 = "";
                place9 = "";
                setcolor();
                counter = 0;
                if (widget.iso == true) {
                  replace(computerlvl3("o"), "x");
                }
                setState(() {});
              },
              btnOkText: "play again")
            ..show();
        } else if (check("o") == "draw") {
          statincrement("draw");

          return AwesomeDialog(
              context: context,
              dialogType: DialogType.WARNING,
              animType: AnimType.SCALE,
              title: "draw",
              desc: 'Do you want to play again \n',
              btnCancelOnPress: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => MyApp(pageto: 1)));
              },
              btnCancelText: "Home Page",
              btnOkOnPress: () {
                place1 = "";
                place2 = "";
                place3 = "";
                place4 = "";
                place5 = "";
                place6 = "";
                place7 = "";
                place8 = "";
                place9 = "";
                setcolor();
                counter = 0;
                if (widget.iso == true) {
                  replace(computerlvl3("o"), "x");
                }
                setState(() {});
              },
              btnOkText: "play again")
            ..show();
        }
      }
      if (widget.hard == 1) {
        await replace(computerlvl1(), "x");
      } else if (widget.hard == 2) {
        await replace(computerlvl2("o"), "x");
      } else if (widget.hard == 3) {
        await replace(computerlvl3("o"), "x");
      }
      if (check("x") == 'x') {
        statincrement("lose");

        return AwesomeDialog(
            context: context,
            dialogType: DialogType.SUCCES,
            animType: AnimType.SCALE,
            title: " X won",
            desc: 'Do you want to play again \n',
            btnCancelOnPress: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => MyApp(pageto: 1)));
            },
            btnCancelText: "Home Page",
            btnOkOnPress: () {
              place1 = "";
              place2 = "";
              place3 = "";
              place4 = "";
              place5 = "";
              place6 = "";
              place7 = "";
              place8 = "";
              place9 = "";
              setcolor();
              counter = 0;
              if (widget.iso == true) {
                replace(computerlvl3("o"), "x");
              }
              setState(() {});
            },
            btnOkText: "play again")
          ..show();
      } else if (check("x") == "draw") {
        statincrement("draw");

        return AwesomeDialog(
            context: context,
            dialogType: DialogType.WARNING,
            animType: AnimType.SCALE,
            title: "draw",
            desc: 'Do you want to play again \n',
            btnCancelOnPress: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => MyApp(pageto: 1)));
            },
            btnCancelText: "Home Page",
            btnOkOnPress: () {
              place1 = "";
              place2 = "";
              place3 = "";
              place4 = "";
              place5 = "";
              place6 = "";
              place7 = "";
              place8 = "";
              place9 = "";
              setcolor();
              counter = 0;
              if (widget.iso == true) {
                replace(computerlvl3("o"), "x");
              }
              setState(() {});
            },
            btnOkText: "play again")
          ..show();
      }
    }
  }

  int counter = 0;
  vshuman(var num) {
    if (counter % 2 == 0) {
      replace(num, "x");
      if (check("x") == "x") {
        statincrement("win");
        counter = 0;

        return AwesomeDialog(
            context: context,
            dialogType: DialogType.SUCCES,
            animType: AnimType.SCALE,
            title: " X won",
            desc: 'Do you want to play again \n',
            btnCancelOnPress: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => MyApp(pageto: 1)));
            },
            btnCancelText: "Home Page",
            btnOkOnPress: () {
              place1 = "";
              place2 = "";
              place3 = "";
              place4 = "";
              place5 = "";
              place6 = "";
              place7 = "";
              place8 = "";
              place9 = "";
              setcolor();
              counter = 0;
              if (widget.iso == true) {
                replace(computerlvl3("o"), "x");
              }
              setState(() {});
            },
            btnOkText: "play again")
          ..show();
      } else if (check("x") == "draw") {
        statincrement("draw");
        counter = 0;
        return AwesomeDialog(
            context: context,
            dialogType: DialogType.WARNING,
            animType: AnimType.SCALE,
            title: "draw",
            desc: 'Do you want to play again \n',
            btnCancelOnPress: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => MyApp(pageto: 1)));
            },
            btnCancelText: "Home Page",
            btnOkOnPress: () {
              place1 = "";
              place2 = "";
              place3 = "";
              place4 = "";
              place5 = "";
              place6 = "";
              place7 = "";
              place8 = "";
              place9 = "";
              setcolor();
              counter = 0;
              if (widget.iso == true) {
                replace(computerlvl3("o"), "x");
              }
              setState(() {});
            },
            btnOkText: "play again")
          ..show();
      }
    } else {
      replace(num, "o");
      if (check("o") == "o") {
        statincrement("lose");
        counter = 0;

        return AwesomeDialog(
            context: context,
            dialogType: DialogType.SUCCES,
            animType: AnimType.SCALE,
            title: " O won",
            desc: 'Do you want to play again \n',
            btnCancelOnPress: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => MyApp(pageto: 1)));
            },
            btnCancelText: "Home Page",
            btnOkOnPress: () {
              place1 = "";
              place2 = "";
              place3 = "";
              place4 = "";
              place5 = "";
              place6 = "";
              place7 = "";
              place8 = "";
              place9 = "";
              setcolor();
              counter = 0;
              if (widget.iso == true) {
                replace(computerlvl3("o"), "x");
              }
              setState(() {});
            },
            btnOkText: "play again")
          ..show();
      } else if (check("o") == "draw") {
        statincrement("draw");
        counter = 0;

        return AwesomeDialog(
            context: context,
            dialogType: DialogType.WARNING,
            animType: AnimType.SCALE,
            title: "draw",
            desc: 'Do you want to play again \n',
            btnCancelOnPress: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => MyApp(pageto: 1)));
            },
            btnCancelText: "Home Page",
            btnOkOnPress: () {
              place1 = "";
              place2 = "";
              place3 = "";
              place4 = "";
              place5 = "";
              place6 = "";
              place7 = "";
              place8 = "";
              place9 = "";
              setcolor();
              counter = 0;
              if (widget.iso == true) {
                replace(computerlvl3("o"), "x");
              }
              setState(() {});
            },
            btnOkText: "play again")
          ..show();
      }
    }
    counter++;
  }

  var loses;
  var draws;
  var wins;

  var colorX;
  var colorXstring;
  var colorO;
  var colorOstring;
  var shapecolor;
  var shapecolorstring;
  getstat() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    loses = (prefs.getInt("loses") ?? 0);
    draws = (prefs.getInt("draws") ?? 0);
    wins = (prefs.getInt("wins") ?? 0);
    colorXstring = (prefs.getString("colorx") ?? "black");
    colorOstring = (prefs.getString("coloro") ?? "black");
    shapecolorstring = (prefs.getString("shapecolor") ?? "black");
    await colorchange("x", colorXstring);
    await colorchange("o", colorOstring);
    await colorchange("shape", shapecolorstring);
    setcolor();
    setState(() {});
  }

  colorchange(xoshape, color) async {
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

  statincrement(var stat) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      if (stat == "lose") {
        loses = ((prefs.getInt("loses") ?? 0) + 1);
        prefs.setInt("loses", loses);
      } else if (stat == "draw") {
        draws = ((prefs.getInt("draws") ?? 0) + 1);
        prefs.setInt("draws", draws);
      } else if (stat == "win") {
        wins = ((prefs.getInt("wins") ?? 0) + 1);
        prefs.setInt("wins", wins);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    getstat();

    if (widget.iso == true) {
      replace(computerlvl3("o"), "x");
    }
    if (widget.human == false && widget.iso == false) {
      playerx = 'user';
      if (widget.hard == 1) {
        playero = 'computer \n(easy)';
      } else if (widget.hard == 2) {
        playero = 'computer \n(normal)';
      } else if (widget.hard == 3) {
        playero = 'computer \n(hard)';
      }
    }
    if (widget.human == false && widget.iso == true) {
      playero = 'user';
      if (widget.hard == 1) {
        playerx = 'computer \n(easy)';
      } else if (widget.hard == 2) {
        playerx = 'computer \n(normal)';
      } else if (widget.hard == 3) {
        playerx = 'computer \n(hard)';
      }
    }
    if (widget.human == true) {
      playerx = 'user';
      playero = 'player 2';
    }
    print('$colorX');
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return Scaffold(
      body: Container(
        // decoration: BoxDecoration(
        //     image: DecorationImage(image: AssetImage("images/background.png"))),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Loses : $loses ",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                  Container(
                    width: 2,
                    height: 30,
                    color: Colors.black45,
                  ),
                  Text("Draw : $draws ",
                      style:
                          TextStyle(color: Colors.yellow[700], fontSize: 20)),
                  Container(
                    width: 2,
                    height: 30,
                    color: Colors.black45,
                  ),
                  Text("Wins : $wins ",
                      style: TextStyle(color: Colors.green, fontSize: 20)),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(children: [
                  Text("X : $playerx",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: playercolorx, fontSize: 20)),
                ]),
                Container(
                  width: 2,
                  height: 30,
                  color: Colors.black45,
                ),
                Column(children: [
                  Text("O : $playero",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: playercoloro, fontSize: 20)),
                ]),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    height: 400,
                    padding: EdgeInsets.all(10),
                    child: GridView(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisExtent: 100,
                      ),
                      children: [
                        Container(
                          child: Stack(
                            children: [
                              InkWell(
                                onTap: () async {
                                  if (widget.human == true) {
                                    await vshuman(1);
                                  } else {
                                    if (widget.iso == false) {
                                      await game(1, "x");
                                    } else if (widget.iso == true) {
                                      await game(1, "o");
                                    }
                                  }
                                },
                              ),
                              place1 == 'x'
                                  ? Center(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            bottom: 20, right: 10),
                                        child: Icon(
                                          Icons.close_rounded,
                                          size: size1,
                                          color: place1colorx,
                                        ),
                                      ),
                                    )
                                  : Text(""),
                              place1 == 'o'
                                  ? Center(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            bottom: 20, right: 10),
                                        child: Icon(Icons.circle_outlined,
                                            size: size1, color: place1coloro),
                                      ),
                                    )
                                  : Text(""),
                              Positioned(
                                right: 0,
                                child: Container(
                                  width: 20,
                                  height: 133,
                                  decoration: BoxDecoration(
                                      color: bordercolor,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10))),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  width: 200,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: bordercolor,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomLeft: Radius.circular(10))),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Stack(
                            children: [
                              InkWell(
                                onTap: () {
                                  if (widget.human == true) {
                                    vshuman(2);
                                  } else {
                                    if (widget.iso == false) {
                                      size3 = 85;
                                      game(2, "x");
                                    } else if (widget.iso == true) {
                                      game(2, "o");
                                    }
                                  }
                                },
                              ),
                              place2 == 'x'
                                  ? Center(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            bottom: 20, right: 10),
                                        child: Icon(Icons.close_rounded,
                                            size: size2, color: place2colorx),
                                      ),
                                    )
                                  : Text(""),
                              place2 == 'o'
                                  ? Center(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            bottom: 20, right: 10),
                                        child: Icon(Icons.circle_outlined,
                                            size: size2, color: place2coloro),
                                      ),
                                    )
                                  : Text(""),
                              Positioned(
                                right: 0,
                                child: Container(
                                  margin: EdgeInsets.only(
                                    bottom: 22,
                                  ),
                                  width: 20,
                                  height: 133,
                                  decoration: BoxDecoration(
                                      color: bordercolor,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10))),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  width: 200,
                                  height: 20,
                                  color: bordercolor,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Stack(
                            children: [
                              InkWell(
                                onTap: () {
                                  if (widget.human == true) {
                                    vshuman(3);
                                  } else {
                                    if (widget.iso == false) {
                                      size3 = 85;
                                      game(3, "x");
                                    } else if (widget.iso == true) {
                                      game(3, "o");
                                    }
                                  }
                                },
                              ),
                              place3 == 'x'
                                  ? Center(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            bottom: 20, right: 10),
                                        child: Icon(Icons.close_rounded,
                                            size: size3, color: place3colorx),
                                      ),
                                    )
                                  : Text(""),
                              place3 == 'o'
                                  ? Center(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            bottom: 20, right: 10),
                                        child: Icon(Icons.circle_outlined,
                                            size: size3, color: place3coloro),
                                      ),
                                    )
                                  : Text(""),
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  width: 80,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: bordercolor,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                          bottomRight: Radius.circular(10))),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Stack(
                            children: [
                              InkWell(
                                onTap: () {
                                  if (widget.human == true) {
                                    vshuman(4);
                                  } else {
                                    if (widget.iso == false) {
                                      size1 = 85;
                                      game(4, "x");
                                    } else if (widget.iso == true) {
                                      game(4, "o");
                                    }
                                  }
                                },
                              ),
                              place4 == 'x'
                                  ? Center(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            bottom: 20, right: 10),
                                        child: Icon(Icons.close_rounded,
                                            size: size4, color: place4colorx),
                                      ),
                                    )
                                  : Text(""),
                              place4 == 'o'
                                  ? Center(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            bottom: 20, right: 10),
                                        child: Icon(Icons.circle_outlined,
                                            size: size4, color: place4coloro),
                                      ),
                                    )
                                  : Text(""),
                              Positioned(
                                right: 0,
                                child: Container(
                                  width: 20,
                                  height: 133,
                                  color: bordercolor,
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  width: 200,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: bordercolor,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomLeft: Radius.circular(10))),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Stack(
                            children: [
                              InkWell(
                                onTap: () {
                                  if (widget.human == true) {
                                    vshuman(5);
                                  } else {
                                    if (widget.iso == false) {
                                      size1 = 85;
                                      game(5, "x");
                                    } else if (widget.iso == true) {
                                      game(5, "o");
                                    }
                                  }
                                },
                              ),
                              place5 == 'x'
                                  ? Center(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            bottom: 20, right: 10),
                                        child: Icon(Icons.close_rounded,
                                            size: size5, color: place5colorx),
                                      ),
                                    )
                                  : Text(""),
                              place5 == 'o'
                                  ? Center(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            bottom: 20, right: 10),
                                        child: Icon(Icons.circle_outlined,
                                            size: size5, color: place5coloro),
                                      ),
                                    )
                                  : Text(""),
                              Positioned(
                                right: 0,
                                child: Container(
                                  width: 20,
                                  height: 133,
                                  color: bordercolor,
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  width: 200,
                                  height: 20,
                                  color: bordercolor,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Stack(
                            children: [
                              InkWell(
                                onTap: () {
                                  if (widget.human == true) {
                                    vshuman(6);
                                  } else {
                                    if (widget.iso == false) {
                                      size1 = 85;
                                      game(6, "x");
                                    } else if (widget.iso == true) {
                                      game(6, "o");
                                    }
                                  }
                                },
                              ),
                              place6 == 'x'
                                  ? Center(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            bottom: 20, right: 10),
                                        child: Icon(Icons.close_rounded,
                                            size: size6, color: place6colorx),
                                      ),
                                    )
                                  : Text(""),
                              place6 == 'o'
                                  ? Center(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            bottom: 20, right: 10),
                                        child: Icon(Icons.circle_outlined,
                                            size: size6, color: place6coloro),
                                      ),
                                    )
                                  : Text(""),
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  width: 80,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: bordercolor,
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(10),
                                          topRight: Radius.circular(10))),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Stack(
                            children: [
                              InkWell(
                                onTap: () {
                                  if (widget.human == true) {
                                    vshuman(7);
                                  } else {
                                    if (widget.iso == false) {
                                      size1 = 85;
                                      game(7, "x");
                                    } else if (widget.iso == true) {
                                      game(7, "o");
                                    }
                                  }
                                },
                              ),
                              place7 == 'x'
                                  ? Center(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            bottom: 20, right: 10),
                                        child: Icon(Icons.close_rounded,
                                            size: size7, color: place7colorx),
                                      ),
                                    )
                                  : Text(""),
                              place7 == 'o'
                                  ? Center(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            bottom: 20, right: 10),
                                        child: Icon(Icons.circle_outlined,
                                            size: size7, color: place7coloro),
                                      ),
                                    )
                                  : Text(""),
                              Positioned(
                                right: 0,
                                child: Container(
                                  width: 20,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      color: bordercolor,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10))),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Stack(
                            children: [
                              InkWell(
                                onTap: () {
                                  if (widget.human == true) {
                                    vshuman(8);
                                  } else {
                                    if (widget.iso == false) {
                                      size1 = 85;
                                      game(8, "x");
                                    } else if (widget.iso == true) {
                                      game(8, "o");
                                    }
                                  }
                                },
                              ),
                              place8 == 'x'
                                  ? Center(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            bottom: 20, right: 10),
                                        child: Icon(Icons.close_rounded,
                                            size: size8, color: place8colorx),
                                      ),
                                    )
                                  : Text(""),
                              place8 == 'o'
                                  ? Center(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            bottom: 20, right: 10),
                                        child: Icon(Icons.circle_outlined,
                                            size: size8, color: place8coloro),
                                      ),
                                    )
                                  : Text(""),
                              Positioned(
                                right: 0,
                                child: Container(
                                  width: 20,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      color: bordercolor,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10))),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Stack(
                            children: [
                              InkWell(
                                onTap: () {
                                  if (widget.human == true) {
                                    vshuman(9);
                                  } else {
                                    if (widget.iso == false) {
                                      size1 = 85;
                                      game(9, "x");
                                    } else if (widget.iso == true) {
                                      game(9, "o");
                                    }
                                  }
                                },
                              ),
                              place9 == 'x'
                                  ? Center(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            bottom: 20, right: 10),
                                        child: Icon(Icons.close_rounded,
                                            size: size9, color: place9colorx),
                                      ),
                                    )
                                  : Text(""),
                              place9 == 'o'
                                  ? Center(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            bottom: 20, right: 10),
                                        child: Icon(Icons.circle_outlined,
                                            size: size9, color: place9coloro),
                                      ),
                                    )
                                  : Text(""),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {
                                place1 = "";
                                place2 = "";
                                place3 = "";
                                place4 = "";
                                place5 = "";
                                place6 = "";
                                place7 = "";
                                place8 = "";
                                place9 = "";
                                setcolor();
                                counter = 0;
                                if (widget.iso == true) {
                                  replace(computerlvl3("o"), "x");
                                }
                                setState(() {});
                              },
                              icon: Icon(
                                Icons.replay,
                                size: 50,
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Reset",
                              style: TextStyle(
                                fontSize: 25,
                              ))
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            MyApp(pageto: 2)));
                              },
                              icon: Icon(
                                Icons.settings,
                                size: 50,
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Change \n play setting",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 22,
                              ))
                        ],
                      ),
                    ],
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
