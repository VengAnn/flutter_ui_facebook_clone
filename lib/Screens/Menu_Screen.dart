// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constant.dart';

// ignore: must_be_immutable, camel_case_types
class Menu_Screen extends StatelessWidget {
  const Menu_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              children: [
                const Text(
                  "Menu",
                  style: TextStyle(
                    fontSize: 33,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //
                const Spacer(),
                //
                CircleAvatar(
                  radius: 20,
                  backgroundColor: kcolorgrey,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.settings),
                  ),
                ),
                //
                CircleAvatar(
                  radius: 20,
                  backgroundColor: kcolorgrey,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  ),
                ),
              ],
            ),
          ),
          //
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      "https://biographygist.com/wp-content/uploads/2021/05/Dasha-Taran1.jpg"),
                ),
                //
                SizedBox(
                  width: 10,
                ),
                //
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name user",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text("See your Profile"),
                  ],
                ),
              ],
            ),
          ),
          //
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              thickness: 1,
            ),
          ),
          //
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 500,
              child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 12,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      childAspectRatio: 4 / 1.8,
                      mainAxisSpacing: 10),
                  // ignore: body_might_complete_normally_nullable
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return _getContainerGrideView(
                        null,
                        "Marketplace",
                        // ignore: deprecated_member_use, prefer_const_constructors
                        FaIcon(FontAwesomeIcons.storeAlt),
                      );
                    }
                    if (index == 1) {
                      return _getContainerGrideView(
                        null,
                        "Reels",
                        // ignore: deprecated_member_use, prefer_const_constructors
                        FaIcon(FontAwesomeIcons.videoCamera),
                      );
                    }
                    if (index == 2) {
                      return _getContainerGrideView(
                        null,
                        "Feeds",
                        // ignore: deprecated_member_use, prefer_const_constructors
                        FaIcon(FontAwesomeIcons.newspaper),
                      );
                    }
                    if (index == 3) {
                      return _getContainerGrideView(
                        null,
                        "Feeds",
                        // ignore: deprecated_member_use, prefer_const_constructors
                        FaIcon(FontAwesomeIcons.newspaper),
                      );
                    }
                  }),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _getContainerGrideView(Icon? icon, String text, FaIcon? faIcon) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.red[100],
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //two ways to set not null !
          //if ! =null
          icon!,
          if (faIcon != null) faIcon,
          const SizedBox(
            height: 10,
          ),
          // ignore: unnecessary_string_interpolations
          Text(
            // ignore: unnecessary_string_interpolations
            "$text",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    ),
  );
}
