import 'dart:js_util';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallModel {
  final String name;
  final String time;
  final String avatar;
  final Icon calltype;

  CallModel(
      {required this.name,
      required this.time,
      required this.avatar,
      required this.calltype});

  static const callRecieved =
      Icon(Icons.call_received, size: 18, color: Colors.green);

  static const callMissed = Icon(
    Icons.call_missed,
    size: 18,
    color: Colors.red,
  );
}

List<CallModel> callData = [
  CallModel(
    name: 'Rahul',
    calltype: CallModel.callMissed,
    time: '10.20',
    avatar: 'images/2.jpg',
  ),
  CallModel(
    name: 'Rohit',
    calltype: CallModel.callRecieved,
    time: '10.45',
    avatar: 'images/3.jpg',
  ),
  CallModel(
    name: 'Dipak',
    calltype: CallModel.callRecieved,
    time: '12.12',
    avatar: 'images/4.jpg',
  ),
  CallModel(
      name: 'Nitish',
      time: '12.35',
      avatar: 'images/5.jpg',
      calltype: CallModel.callMissed),
  CallModel(
      name: 'Shikhar',
      time: '07.30',
      avatar: 'images/6.jpg',
      calltype: CallModel.callRecieved),
  CallModel(
      name: 'Raj',
      time: '9.12',
      avatar: 'images/7.jpg',
      calltype: CallModel.callRecieved),
  CallModel(
      name: 'Dipu',
      time: '8.00',
      avatar: 'images/8.jpg',
      calltype: CallModel.callMissed),
];
