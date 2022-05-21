import 'package:flutter/material.dart';

import '../widget/category_selector.dart';
import '../widget/favourite_contacts.dart';
import '../widget/recent_chats.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        //toolbarHeight: 100,
        leading: IconButton(
          padding: EdgeInsets.fromLTRB(28, 0, 0, 0),
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {},
        ),
        title: Center(
          child: Text(
            "Chats",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22.0,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            padding: EdgeInsets.symmetric(horizontal: 28),
            icon: Icon(Icons.search),
            color: Colors.white,
          )
        ],
      ),
      body: Column(
        children: [
          CategorySelector(),
          Expanded(
            child: Container(
              //height: 150.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
                color: Theme.of(context).accentColor,
              ),
              child: Column(
                children: [
                  FavouriteContacts(),
                  RecentChats(),
                ],
              ),
            ),
          )
        ],
      ),
      backgroundColor: Theme.of(context).primaryColor,
    );
  }
}
