import 'package:unit7_assignment_canete/components/tab_widget_1.dart';
import 'package:unit7_assignment_canete/components/tab_widget_2.dart';
import 'package:flutter/material.dart';

class About_Me extends StatefulWidget {
  const About_Me({super.key});

  @override
  State<About_Me> createState() => _About_MeState();
}

class _About_MeState extends State<About_Me> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("About Me"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.info), text: "Tab 1"),
              Tab(icon: Icon(Icons.person), text: "Tab 2"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TabWidget1(), // First tab content
            TabWidget2(), // Second tab content
          ],
        ),
      ),
    );
  }
}
