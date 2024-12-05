import 'package:flutter/material.dart';
import 'package:whatsapp_project/pages/calls_screen.dart';
import 'package:whatsapp_project/pages/camera_screen.dart';
import 'package:whatsapp_project/pages/chat_screen.dart';
import 'package:whatsapp_project/pages/status_screen.dart';

class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({super.key});

  @override
  State<WhatsAppHome> createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin {
 late TabController _tabController;
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 164, 37),
        title: Text("WhatsApp"),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: const Color.fromARGB(255, 255, 255, 255),
          tabs: <Widget>[
             Tab(
              icon:  Icon(Icons.camera_alt),
            ),
             Tab(text: "CHAT"),
             Tab(text: "STATUS"),
             Tab(text: "PANGGILAN"),
          ],
        ),
        actions: <Widget>[
          Icon(Icons.search),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0)),
          Icon(Icons.more_vert)
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallsScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ("Open Chat"),
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}