import 'package:flutter/foundation.dart';

class People {
  final int id;
  final String userName;
  final String profile;
  final String time;
  final String like;
  final String title;
  final String comment;
  final String share;
  final String imagesPost;

  //contructor
  People(this.id, this.userName, this.profile, this.imagesPost, this.time,
      this.comment, this.share, this.title, this.like);

  static List<People> generate() {
    return [
      //(id , username, profile imagespost , time, comment, share, title, like)
      People(0, "", "", "", "", "", "", "", ""),
      //
      People(
          1,
          "Doctor Strange",
          "https://image.lexica.art/full_jpg/00ea3399-b52e-4268-920b-6b5b9d243ae2",
          "https://image.lexica.art/full_jpg/3ee7aa2e-d7e1-4705-b86a-c6192b1742fd",
          "just now",
          "22k",
          "10k",
          "Hello I'm Doctor Strange",
          "11k"),
      People(
          2,
          "Super Man",
          "https://image.lexica.art/md2/6795a4c3-912e-41ab-841d-9537cafd0253",
          "https://image.lexica.art/full_jpg/4a22aadd-55f5-49bf-a7b3-70e35b799cbd",
          "just now",
          "220k",
          "100k",
          "Hello I'm Super Man",
          "110k"),
      People(
          3,
          "Optimus Prime",
          "https://image.lexica.art/full_jpg/42d56900-0cb7-4a15-825e-1735bf0f203d",
          "https://cdn.vox-cdn.com/thumbor/oylb3MGb1jQk3LOP2N3c4eaW-dg=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/24390847/last_knight_optimus.jpeg",
          "just now",
          "108k",
          "150k",
          "Hello I'm Optimus Prime",
          "111k"),
      People(
          4,
          "monkey",
          "https://image.lexica.art/full_jpg/bfe4e791-6e48-4ea3-b3a6-bf47984b4de2",
          "https://image.lexica.art/full_jpg/bfe4e791-6e48-4ea3-b3a6-bf47984b4de2",
          "1 day ago",
          "22k",
          "10k",
          "Hello Word",
          "11k"),
      //
      People(
          5,
          "Kri Sna",
          "https://image.lexica.art/full_jpg/f15acad1-9963-4b30-b404-e3f50144c936",
          "https://image.lexica.art/full_jpg/f15acad1-9963-4b30-b404-e3f50144c936",
          "1 day ago",
          "21k",
          "5k",
          "Hello I'm Kri Sna",
          "6.5k"),
      //
      People(
          6,
          "God of War",
          "https://image.lexica.art/full_jpg/a8acbd87-5d64-421f-bb56-8dbbf26a993e",
          "https://image.lexica.art/full_jpg/ea36820e-0ce6-479e-9f1b-74284307fdf9",
          "1 day ago",
          "22k",
          "10k",
          "Hello Word",
          "11k"),
      //
      People(
          7,
          "Dog",
          "https://image.lexica.art/full_jpg/8906299f-cc7f-4e2b-bd02-35d3c0e29ccf",
          "https://image.lexica.art/full_jpg/694cf173-1de0-48aa-b2d8-a5c5d472fbd0",
          "1 day ago",
          "22k",
          "10k",
          "Hello Word",
          "15k"),
      //
      People(
          8,
          "Bill Gate",
          "https://image.lexica.art/full_jpg/ed4ac13a-0113-459d-b1ef-71fcff238550",
          "https://image.lexica.art/full_jpg/d6bf09a4-1299-4e16-823d-7f72a923d50d",
          "2 day ago",
          "12k",
          "15k",
          "Hello I'm Bill Gate",
          "15k"),
      //
      People(
          9,
          "Speder Man",
          "https://image.lexica.art/full_jpg/aa3b41d0-06a3-4414-bf19-5849ef813ada",
          "https://image.lexica.art/full_jpg/b7e2f1cf-0fb8-43d5-b9cb-c3456a33095c",
          "1 day ago",
          "22k",
          "10k",
          "Hello I'm Speder Man",
          "11k"),
      //
      People(
          10,
          "Iron Man",
          "https://image.lexica.art/full_jpg/1fd72dcb-b839-46c5-ad3d-cfe17fe742c5",
          "https://image.lexica.art/full_jpg/2fad791d-d96b-4ea9-93aa-22f3f49aaa7a",
          "4 day ago",
          "20k",
          "8k",
          "Hello I'm Iron Man",
          "8k"),
    ];
  }
}
