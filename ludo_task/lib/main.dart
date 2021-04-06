import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.pink,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}
class _DicePageState extends State<DicePage>
{
  int total = 0;
  int winner = 0;
  int winn = 0;
  int dice1 = 0;
  int dice2 = 0;
  int dice3 = 0;
  int dice4 = 0;
  int limit = 10;
  int left = 1;
  int right = 1;
  int Bleft = 1;
  int Bright = 1;
  int dice1count = 0;
  int dice2count = 0;
  int dice3count = 0;
  int dice4count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        backgroundColor: Colors.pink,
        body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Text(
        'Totalclicks: $limit',
        style: TextStyle(
        color: Colors.white,
        fontSize: 40.0,
    ),
    ),
    Expanded(
    child: Row(
    children: <Widget>[
    Expanded(
    child: TextButton(
    onPressed: () {
    setState(() {
    if (dice1count < 10) {
    Bleft = Random().nextInt(6) + 1;
    dice1 = dice1 + Bleft;
    dice1count = dice1count + 1;
    total = total + Bleft;
    }
    if (dice1 > dice2 &&
    dice1 > dice3 &&
    dice1 > dice4) {
    winner = dice1;
    winn = 1;
    } else if (dice2 > dice1 &&
    dice2 > dice3 &&
    dice2 > dice4) {
    winner = dice2;
    winn = 2;
    } else if (dice3 > dice1 &&
    dice3 > dice2 &&
    dice3 > dice4) {
    winner = dice3;
    winn = 3;
    } else {
    winner = dice4;
    winn = 4;



