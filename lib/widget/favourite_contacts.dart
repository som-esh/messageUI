import 'package:flutter/material.dart';

import '../models/message_model.dart';
import '../screens/chat_screen.dart';

class FavouriteContacts extends StatefulWidget {
  const FavouriteContacts({Key? key}) : super(key: key);

  @override
  State<FavouriteContacts> createState() => _FavouriteContactsState();
}

class _FavouriteContactsState extends State<FavouriteContacts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          //
          //
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //
          //
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 18.0),
              child: Text(
                'Favourite Contacts',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                ),
              ),
            ),
            IconButton(
              padding: EdgeInsets.symmetric(horizontal: 22.0),
              alignment: Alignment.centerLeft,
              onPressed: () {},
              icon: Icon(Icons.more_horiz_outlined),
              color: Colors.grey[600],
              iconSize: 30.0,
            )
          ],
        ),
        const SizedBox(
          height: 4.0,
        ),
        Container(
          color: Theme.of(context).accentColor,
          height: 115.0,
          child: ListView.builder(
            padding: EdgeInsets.only(left: 10.0),
            scrollDirection: Axis.horizontal,
            itemCount: favorites.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => ChatScreen(favorites[index]))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage(favorites[index].imageUrl),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        favorites[index].name,
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
