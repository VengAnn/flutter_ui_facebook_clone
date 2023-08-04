import 'package:facebook_clone/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class newFeed_Screen extends StatelessWidget {
  const newFeed_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: double.maxFinite,
                // color: Colors.red,
                child: Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 5,
                        ),
                        const CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(KLogoFbUrl),
                        ),
                        //
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.85,
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "What's on your mind?😜",
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    width: 1.4,
                                    color: Colors.black.withOpacity(0.7),
                                  ),
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 0,
                                  horizontal: 10,
                                )),
                          ),
                        ),
                      ],
                    ),
                    //
                    const Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // ignore: avoid_unnecessary_containers
                        Container(
                          child: const Row(
                            children: [
                              Icon(
                                Icons.video_call,
                                size: 33,
                              ),
                              Text("Live")
                            ],
                          ),
                        ),
                        //
                        // ignore: avoid_unnecessary_containers
                        Container(
                          child: const Row(
                            children: [
                              Icon(
                                Icons.photo,
                                size: 28,
                              ),
                              Text("Photo")
                            ],
                          ),
                        ),
                        // ignore: avoid_unnecessary_containers
                        Container(
                          child: const Row(
                            children: [
                              Icon(
                                Icons.video_camera_back,
                                size: 30,
                              ),
                              Text("Forum")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 5,
                color: Colors.grey,
              ),
            ),
          ),
          //
          Flexible(
            flex: 1,
            child: Container(
              width: double.maxFinite,
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Container(
                        width: 120,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(width: 1, color: Colors.red),
                        ),
                      );
                    } else {
                      return Container(
                        width: 120,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              width: 1,
                              color: secondaryColor,
                            )),
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
