import 'package:flutter/material.dart';

import 'chat_detail_page.dart';
import 'models/chat_models.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
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
                      subtitle: Text(
                        chatData[index].message,
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      trailing: Text(
                        chatData[index].time,
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChatDetailPage(),
                            ));
                      },
                    )
                  ],
                )));
  }
}
