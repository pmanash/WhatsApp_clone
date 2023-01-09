import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/call_page.dart';
import 'package:whatsapp_clone/pages/chat_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, initialIndex: 1, vsync: this);

    super.initState();
  }

  List<Tab> topTabs = [
    Tab(
      icon: Icon(Icons.camera_alt),
    ),
    Tab(
      text: ('CHATS'),
    ),
    Tab(
      text: ('STATUS'),
    ),
    Tab(
      text: ('CALLS'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
        bottom: TabBar(
          tabs: topTabs,
          controller: _tabController,
        ),
      ),
      body: TabBarView(controller: _tabController, 
      children: [
        Text('Camara'),
        ChatPage(),
        Text('Status'),
        CallPage(),
      ]
      ),
    );
  }
}
