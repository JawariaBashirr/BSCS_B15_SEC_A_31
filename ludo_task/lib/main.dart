import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.blueGrey,
        ),
        body: DicePage(),
      ),
    ),
  );
}
int flag = 0;
var leftDiceNumber = 1;
var rightDiceNumber = 1;
var leftdDiceNumber = 1;
var rightdDiceNumber = 1;

int player1 = 0,
    player2 = 0,
    player3 = 0,
    player4 = 0,
    count1 = 0,
    count2 = 0,
    count3 = 0,
    winner = 0,
    count4 = 0;
String string4;

double height4 = 130.0, width4 = 150.0;

void AlertResult2(BuildContext context) {
  if (player1 > player2) {
    winner = 1;

  } else if (player2 > player1) {
    winner = 2;

  }
}

void AlertResult(BuildContext context) {
  if (player1 > player2 && player1 > player3 && player1 > count4) {
    winner = 1;
    string4="Player $winner is Winner";

  } else if (player2 > player1 && player2 > count3 && player2 > player4) {
    winner = 2;
    string4="Player $winner is Winner";

  } else if (player3 > player2 && player3 > player1 && player3 > player4) {
    winner = 3;
    string4="Player $winner is Winner";

  } else if (player4 > player2 && player4 > player1 && player4 > player3) {
    winner = 4;
    string4="Player $winner is Winner";

  }
}

void reset() {
  leftDiceNumber = 1;
  rightDiceNumber = 1;
  leftdDiceNumber = 1;
  rightdDiceNumber = 1;

  flag = player1 =
      player2 = player3 = player4 = count1 = count2 = count3 = count4 = 0;
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}
class _DicePageState extends State<DicePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Totalclicks: 10',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                ),
              ),
            Row(children: <Widget>[
              Expanded(child: Container(
                  color: Colors.deepPurple,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            '         Player1',
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            '         Score:$player1',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            '         Dice Clicks:$count1',
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          FlatButton(
                            onPressed: () {
                              if (count1 == 10 &&
                                  count2 == 10 &&
                                  count3 == 10 &&
                                  count4 == 10) {
                                AlertResult(context);
                              }
                              setState(() {
                                if (count1 < 10) {

                                  if (flag == 0) {
                                    count1++;
                                    //playsound(1);

                                    leftDiceNumber =
                                        Random().nextInt(6) + 1;
                                    player1 = player1 + leftDiceNumber;
                                    flag = 1;
                                    if (flag == 1) {
                                      DicePage();
                                    }
                                  }
                                } else if (count1 == 10) {
                                  //showAlertDialog(context);
                                }
                              });
                            },
                            child: Image.asset(
                              'images/dice$leftDiceNumber.png',
                              height: height4,
                              width: width4,
                            ),
                          ),
                        ],
                      )
                    ],
                  )),),
              Expanded(child: Container(
                  color: Colors.deepPurple,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            '         Player2',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            '         Score:$player2',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            '         Dice Clicks:$count2',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          FlatButton(
                            onPressed: () {
                              if (count1 == 10 &&
                                  count2 == 10 &&
                                  count3 == 10 &&
                                  count4 == 10) {
                                AlertResult(context);
                              }
                              setState(() {
                                if (count2 < 10) {
                                  if (flag == 1) {
                                    //playsound(1);
                                    count2++;
                                    rightDiceNumber =
                                        Random().nextInt(6) + 1;
                                    player2 = player2 + rightDiceNumber;
                                    flag = 2;
                                    if (flag == 2) {
                                      DicePage();
                                    }
                                  }
                                } else if (count2 == 10) {
                                  //showAlertDialog2(context);
                                }
                              });
                            },
                            child: Image.asset(
                              'images/dice$rightDiceNumber.png',
                              height: height4,
                              width: width4,
                            ),
                          ),
                        ],
                      )
                    ],
                  )), ),
            ],),

              Row(children: <Widget>[
                Expanded(child: Container(
                    color: Colors.deepPurple,
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 10.0),
                        Row(
                          children: <Widget>[
                            Text(
                              '         Player3',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              '         Score:$player3',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              '         Dice Clicks:$count3',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            FlatButton(
                              onPressed: () {
                                if (count1 == 10 &&
                                    count2 == 10 &&
                                    count3 == 10 &&
                                    count4 == 10) {
                                  AlertResult(context);
                                }
                                setState(() {
                                  if (count3 < 10) {
                                    if (flag == 2) {
                                      //playsound(1);
                                      count3++;
                                      flag = 3;
                                      leftdDiceNumber =
                                          Random().nextInt(6) + 1;
                                      player3 = player3 + leftdDiceNumber;
                                      flag = 3;
                                      if (flag == 3) {
                                        DicePage();
                                      }
                                    }
                                  } else if (count3 == 10) {
                                    // showAlertDialog3(context);
                                  }
                                });
                              },
                              child: Image.asset(
                                'images/dice$leftdDiceNumber.png',
                                height: height4,
                                width: width4,
                              ),
                            ),
                          ],
                        )
                      ],
                    )) ,),
                Expanded(child: Container(
                    color: Colors.deepPurple,
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 10.0),
                        Row(
                          children: <Widget>[
                            Text(
                              '         Player4',
                              style: TextStyle(
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              '         Score:$player4',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              '         Dice Clicks:$count4',
                              style: TextStyle(
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            FlatButton(
                              onPressed: () {
                                if (count1 == 10 &&
                                    count2 == 10 &&
                                    count3 == 10 &&
                                    count4 == 10) {
                                  AlertResult(context);
                                }
                                setState(() {
                                  if (count4 < 10) {
                                    if (flag == 3) {

                                      flag = 4;
                                      count4++;
                                      rightdDiceNumber =
                                          Random().nextInt(6) + 1;
                                      player4 = player4 + rightDiceNumber;
                                      flag = 0;
                                      if (flag == 0) {
                                        DicePage();
                                      }
                                    }
                                  } else if (count4 == 10) {
                                    showAlertDialog2(context,string4);
                                  }




                                });
                              },
                              child: Image.asset(
                                'images/dice$rightdDiceNumber.png',
                                height: height4,
                                width: width4,
                              ),
                            ),
                          ],
                        )
                      ],
                    )),),
              ],),
              SizedBox(
                width: 440.0,
                height: 20.0,
                child: Divider(
                  color: Colors.black,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

showAlertDialog2(BuildContext context, String string1)
{
  AlertDialog alert= AlertDialog(
    title: Text('Result'),
    content: Text('$string1'),
    actions: [],
  );
  showDialog(
    context:context,
    builder: (BuildContext){
      return alert;
    },
  );
}

