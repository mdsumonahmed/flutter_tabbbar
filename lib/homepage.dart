import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tab_bar/chat.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('WhatsApp'),
          actions: [
            Icon(Icons.search),
            Icon(Icons.menu_rounded),
          ],
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.camera),
            ),
            Tab(
              text: 'CHAT',
            ),
            Tab(
              text: 'STATUS',
            ),
            Tab(
              text: 'CALL',
            )
          ]),
        ),
        body: TabBarView(children: [
          Center(
            child: Text('Tab 1'),
          ),
          Center(
            child: Chat(),
          ),
          Center(
            child: Text(
              'Tab3',
              style: TextStyle(fontSize: 40),
            ),
          ),
          Center(
            child: Text(
              'Tab4',
              style: TextStyle(fontSize: 40),
            ),
          ),
        ]),
      ),
    );
  }
}
