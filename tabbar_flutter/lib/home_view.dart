import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, //length of tabview
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Text("Tabbar"),
          bottom: TabBar(
            isScrollable:
                true, // Allows horizontal scrolling if there are many tabs.
            indicatorColor: Colors.red, // Color of the active tab's underline.
            unselectedLabelColor: Colors.blue, // Color of inactive tabs.
            labelColor: Colors.red, // Color of the active tab.

            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.person), text: "Profile"),
              Tab(icon: Icon(Icons.settings), text: "Settings"),
              Tab(icon: Icon(Icons.person), text: "Person"),
              Tab(icon: Icon(Icons.location_city), text: "Address"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Home")),
            Center(child: Text("Profile")),
            Center(child: Text("Setting")),
            Center(child: Text("Person")),
            Center(child: Text("Address")),
          ],
        ),
      ),
    );
  }
}
