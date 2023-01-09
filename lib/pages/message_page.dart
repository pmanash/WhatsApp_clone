import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter/scheduler.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  var styleSender = BubbleStyle(
    margin: BubbleEdges.only(top: 10),
    alignment: Alignment.topLeft,
    nip: BubbleNip.leftBottom,
  );
  var stylereciever = BubbleStyle(
    margin: BubbleEdges.only(top: 10),
    alignment: Alignment.topRight,
    nip: BubbleNip.rightTop,
    color: Color.fromRGBO(225, 255, 199, 1.0),
  );
  ScrollController _myController = ScrollController();

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPersistentFrameCallback((_) {
      _myController.jumpTo(_myController.position.maxScrollExtent);
    },);
    return ListView(
      controller: _myController,
      children: [
        Bubble(
          alignment: Alignment.center,
          color: Color.fromRGBO(212, 234, 244, 1.0),
          child: Text('TODAY',
              textAlign: TextAlign.center, style: TextStyle(fontSize: 11.0)),
        ),
        Bubble(
          style: stylereciever,
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleSender,
          child: Text('Hi, developer!'),
        ),
        Bubble(
          style: stylereciever,
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleSender,
          child: Text('Hi, developer!'),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          alignment: Alignment.center,
          nip: BubbleNip.no,
          color: Color.fromRGBO(212, 234, 244, 1.0),
          child: Text('TOMORROW',
              textAlign: TextAlign.center, style: TextStyle(fontSize: 11.0)),
        ),
      ],
    );
  }
}
