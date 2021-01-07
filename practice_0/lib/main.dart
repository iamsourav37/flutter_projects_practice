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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: 100,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                print("You pressed button : $index");
              },
              child: Material(
                elevation: 1.3,
                color: Colors.tealAccent,
                shadowColor: Colors.blueGrey,
                borderRadius: BorderRadius.circular(10.0),
                textStyle: TextStyle(
                  fontSize: 33.0,
                  color: Colors.lightBlueAccent,
                ),
                child: Center(
                  child: Text(
                    index.toString(),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
