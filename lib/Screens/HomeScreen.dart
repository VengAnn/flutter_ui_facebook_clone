// ignore: file_names
// ignore_for_file: avoid_unnecessary_containers

import 'package:facebook_clone/Screens/Menu_Screen.dart';
import 'package:facebook_clone/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'newFeed_Screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(201, 255, 255, 255),
          elevation: 0,
          title: const Text(
            "Facebook",
            style: TextStyle(
              color: secondaryColor,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          //
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey[300],
                child: IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    // ignore: deprecated_member_use
                    FontAwesomeIcons.search,
                    color: Colors.grey,
                    size: 20,
                  ),
                ),
              ),
            ),
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey[300],
              child: IconButton(
                onPressed: () {},
                icon: const FaIcon(
                  FontAwesomeIcons.facebookMessenger,
                  color: secondaryColor,
                ),
              ),
            ),
          ],
          //in AppBar have Bottom
          bottom: TabBar(
            indicatorColor: Colors.amber,
            labelColor: Colors.blue, //set for textlabel
            tabs: [
              Tab(
                icon: FaIcon(
                  // ignore: deprecated_member_use
                  FontAwesomeIcons.home,
                  color: kcolorgrey,
                ),
              ),
              //
              Tab(
                icon: FaIcon(
                  // ignore: deprecated_member_use
                  FontAwesomeIcons.userFriends,
                  color: kcolorgrey,
                ),
              ),
              //
              Tab(
                icon: Icon(
                  Icons.ondemand_video,
                  color: kcolorgrey,
                  size: 30,
                ),
              ), //
              Tab(
                icon: FaIcon(
                  FontAwesomeIcons.store,
                  color: kcolorgrey,
                ),
              ),
              //
              Tab(
                icon: Icon(
                  Icons.notifications_none,
                  size: 30,
                  color: kcolorgrey,
                ),
              ), //
              Tab(
                icon: Icon(
                  Icons.menu,
                  size: 30,
                  color: kcolorgrey,
                ),
              ),
            ],
          ),
        ),
        //
        body: TabBarView(
          children: [
            // ignore: prefer_const_constructors
            newFeed_Screen(),

            Container(
              child: const Text("Add"),
            ),
            Container(
              child: const Text("Add"),
            ),
            Container(
              child: const Text("Add"),
            ),
            Container(
              child: const Text("Add"),
            ),
            //Menu Screnn
            // ignore: prefer_const_constructors
            Menu_Screen(),
          ],
        ),
      ),
    );
  }
}
