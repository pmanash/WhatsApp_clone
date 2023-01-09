import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/models/call_model.dart';

import 'models/chat_models.dart';
import 'dart:js_util';


class CallPage extends StatefulWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            itemCount: chatData.length,
            itemBuilder: (context, index) => Column(
                  children: [
                    Divider(
                      height: 10.0,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blueGrey,
                        backgroundImage: AssetImage(chatData[index].avatar),
                      ),
                      title: Text(
                        chatData[index].name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Row(
                        children: [
                          Container(
                            child: callData[index].calltype,
                          ),
                          Text(
                            callData[index].time,
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          )
                        ],
                      ),
                      trailing: Icon(
                        Icons.call,
                        size: 25.0,
                      ),
                      onTap: () {},
                    )
                  ],
                )));
  }
}
