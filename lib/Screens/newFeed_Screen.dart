import 'package:facebook_clone/Models/models.dart';
import 'package:facebook_clone/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: camel_case_types, must_be_immutable
class newFeed_Screen extends StatelessWidget {
  List<People> peopleList = People.generate();

  newFeed_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              // ignore: sized_box_for_whitespace
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
                        // ignore: sized_box_for_whitespace
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
          //
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _getContainerFor(),
                  //
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 5, right: 5, left: 5, bottom: 5),
                    child: Flexible(
                      flex: 0,
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        width: double.maxFinite,
                        height: 200,
                        //  color: Colors.red,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: peopleList.length,
                            itemBuilder: (context, index) {
                              if (index == 0) {
                                return Container(
                                  width: 120,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border:
                                        Border.all(width: 1, color: Colors.red),
                                  ),
                                  //
                                  child: Stack(
                                    children: [
                                      Column(
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(15),
                                            ),
                                            child: Image.network(
                                              "https://cdn.24h.com.vn/upload/2-2021/images/2021-05-19/158422967_443784680181413_611567295639411291_n-1621437281-128-width1080height1350.jpg",
                                              height: 120,
                                              width: double.infinity,
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                          const Spacer(),
                                          const Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 10),
                                            child: Text("Create Story"),
                                          ),
                                        ],
                                      ),
                                      //
                                      Positioned(
                                        // bottom: 0,
                                        top: 100,
                                        left: 0,
                                        right: 0,
                                        child: Container(
                                          width: 50,
                                          height: 50,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: secondaryColor,
                                              boxShadow: [
                                                BoxShadow(
                                                  spreadRadius: 2,
                                                  blurRadius: 2,
                                                  color: Colors.white,
                                                ),
                                              ]),
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons.add),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              } else {
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Container(
                                    width: 120,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                        width: 1,
                                        color: secondaryColor,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        Column(
                                          children: [
                                            Expanded(
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                child: Image.network(
                                                  peopleList[index].imagesPost,
                                                  width: double.maxFinite,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        //
                                        Positioned(
                                          left: 10,
                                          top: 10,
                                          child: CircleAvatar(
                                            radius: 23,
                                            backgroundColor: Colors.amber,
                                            child: CircleAvatar(
                                              radius: 20,
                                              backgroundImage: NetworkImage(
                                                  peopleList[index].profile),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }
                            }),
                      ),
                    ),
                  ),
                  //
                  _getContainerFor(),
                  //
                  Flexible(
                    // ignore: sized_box_for_whitespace
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      //hieght
                      child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: peopleList.length - 1,
                          itemBuilder: (context, index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          border: Border.all(
                                              width: 3, color: secondaryColor),
                                          boxShadow: const [
                                            BoxShadow(
                                              spreadRadius: 2,
                                              blurRadius: 4,
                                              color: Colors.amber,
                                            )
                                          ],
                                        ),
                                        child: CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              peopleList[index + 1].profile),
                                        ),
                                      ),
                                      //
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      //
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(peopleList[index + 1].userName),
                                          Row(
                                            children: [
                                              Text(peopleList[index + 1].time),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              // ignore: prefer_const_constructors, deprecated_member_use
                                              Icon(
                                                // ignore: deprecated_member_use
                                                FontAwesomeIcons.earth,
                                                size: 20,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const Spacer(),
                                      const Icon(Icons.more_horiz_outlined),
                                      const Icon(Icons.close),
                                    ],
                                  ),
                                ),
                                //
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Text(
                                    peopleList[index + 1].title,
                                    style: const TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                //
                                ClipRRect(
                                  child: Image.network(
                                    peopleList[index + 1].imagesPost,
                                    height: 500,
                                    width: double.infinity,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                //
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    children: [
                                      Image.network(
                                        "https://banner2.cleanpng.com/20180319/rxw/kisspng-facebook-like-button-facebook-like-button-computer-facebook-new-like-symbol-5ab036a9b8fac7.0338659015214977697577.jpg",
                                        width: 30,
                                      ),
                                      //
                                      Text(peopleList[index + 1].like),
                                      //
                                      const Spacer(),
                                      Text(peopleList[index + 1].comment),
                                      const Text("Commets"),
                                      const Spacer(),
                                      Text(peopleList[index + 1].share),
                                      const Text("Shares"),
                                    ],
                                  ),
                                ),
                                const Divider(
                                  thickness: 2,
                                ),
                                //
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    // mainAxisSize: MainAxisSize.min,
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: _getImageIconLikeCShare(
                                          'https://cdn-icons-png.flaticon.com/128/4407/4407467.png',
                                        ),
                                      ),
                                      //
                                      const Text("Like"),
                                      const Spacer(),
                                      //
                                      _getImageIconLikeCShare(
                                        "https://cdn-icons-png.flaticon.com/128/10407/10407195.png",
                                      ),
                                      const Text("Coments"),
                                      const Spacer(),
                                      //
                                      _getImageIconLikeCShare(
                                        "https://cdn-icons-png.flaticon.com/128/2958/2958783.png",
                                      ),
                                      const Text("Share"),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                //
                                _getContainerFor(),
                              ],
                            );
                          }),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget _getContainerFor() {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
        width: 5,
        color: Colors.grey,
      ),
    ),
  );
}

// ignore: unused_element
Widget _getImageIconLikeCShare(String linkimageNetWork) {
  return ClipRRect(
    child: Image.network(
      // ignore: unnecessary_string_interpolations
      "$linkimageNetWork",
      width: 20,
    ),
  );
}
