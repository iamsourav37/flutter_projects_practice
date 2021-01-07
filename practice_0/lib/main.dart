import 'dart:ui';

import 'package:flutter/material.dart';
import 'data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'testing',
      // theme: ThemeData.dark(),
      theme: ThemeData(
        fontFamily: 'Hind',
        // primaryColor: Colors.orange,
        // accentColor: Colors.green,
        primaryColor: Color(0xFF3a9bc2),
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                            "https://pbs.twimg.com/profile_images/1318807777540665345/Tm9JZvRx_400x400.jpg",
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text("Sourav Ganguly"),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.lightBlue,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.face),
              title: Text("Facebook"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.face),
              title: Text("Twitter"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.face),
              title: Text("Instagram"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.face),
              title: Text("Linkedin"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.face),
              title: Text("Github"),
            ),
            Divider(),
            FlatButton(
              onPressed: () {},
              child: Text("Logout"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("GridView & Drawer"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.alarm),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(2.0),
        crossAxisCount: 2,
        childAspectRatio: 1,
        physics: BouncingScrollPhysics(),
        mainAxisSpacing: 6.0,
        crossAxisSpacing: 8.0,
        children: [
          Container(
            height: 700,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1609953578987-01712f9c4640?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 700,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1529429612779-c8e40ef2f36d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 700,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1528901166007-3784c7dd3653?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 700,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1532522750741-628fde798c73?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 700,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1531498860502-7c67cf02f657?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 700,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1518818608552-195ed130cdf4?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 700,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1482062364825-616fd23b8fc1?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTJ8fHByb2dyYW1tZXJzfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 700,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1563796021847-59711ad1dbd5?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 700,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image(
                image: NetworkImage(
                    "https://images.unsplash.com/flagged/photo-1588272719848-c7eebb26de0a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
