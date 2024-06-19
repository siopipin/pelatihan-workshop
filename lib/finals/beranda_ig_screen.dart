// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:pelatihan_flutter_wiyata/finals/widgets/post_widget.dart';

class BerandaIGScreen extends StatefulWidget {
  const BerandaIGScreen({super.key});

  @override
  State<BerandaIGScreen> createState() => _BerandaIGScreenState();
}

class _BerandaIGScreenState extends State<BerandaIGScreen> {
  //controller text
  TextEditingController ctrlUsername = TextEditingController();
  TextEditingController ctrlCaption = TextEditingController();

  bool statusLike = false;
  List dataPostIG = [];
  var dataStory = {
    "akun": [
      {
        "id": 1,
        "url":
            "https://images.pexels.com/photos/4820601/pexels-photo-4820601.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        "name": "Citra98"
      },
      {
        "id": 2,
        "url":
            "https://images.pexels.com/photos/2875005/pexels-photo-2875005.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        "name": "Antonnns"
      },
      {
        "id": 3,
        "url":
            "https://images.pexels.com/photos/2843022/pexels-photo-2843022.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        "name": "Tantyy"
      },
      {
        "id": 4,
        "url":
            "https://images.pexels.com/photos/2643905/pexels-photo-2643905.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        "name": "James"
      },
      {
        "id": 5,
        "url":
            "https://images.pexels.com/photos/3578424/pexels-photo-3578424.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        "name": "Ivica"
      },
      {
        "id": 6,
        "url":
            "https://images.pexels.com/photos/10945756/pexels-photo-10945756.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        "name": "Sentosa"
      },
    ]
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          Text(
            "Instagram",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Icon(
            Icons.keyboard_arrow_down_rounded,
            color: Colors.black,
          ),
        ]),
        actions: [
          Icon(
            Icons.notifications_active_outlined,
            color: Colors.black,
          ),
          SizedBox(width: 16),
          Icon(
            Icons.message_outlined,
            color: Colors.black,
          ),
          SizedBox(width: 16),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(children: [
        //Story
        Container(
          margin: EdgeInsets.only(top: 16, right: 16, left: 16),
          height: 120,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: dataStory["akun"]!.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final item = dataStory["akun"]![index];
              return Container(
                margin: EdgeInsets.only(right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(item['url'].toString()),
                      backgroundColor: Colors.transparent,
                      radius: 35,
                    ),
                    SizedBox(height: 5),
                    Text(
                      item['name'].toString(),
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              );
            },
          ),
        ),

        //Post IG 1
        PostIG(
          url:
              "https://images.pexels.com/photos/14251997/pexels-photo-14251997.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
          username: "RayanaFariz",
          lokasi: "Medan - Indonesia",
          imgpost:
              "https://images.pexels.com/photos/7034219/pexels-photo-7034219.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
          caption:
              " Just one small positive thought in the morning can change your whole day.",
          date: "55 minutes ago",
          statusLike: statusLike,
          tombolLike: () {
            setState(() {
              if (statusLike == true) {
                statusLike = false;
              } else {
                statusLike = true;
              }
            });
          },
        ),
        SizedBox(height: 10),
        if (dataPostIG.length > 0)
          Column(
            children: dataPostIG.map((e) {
              return PostIG(
                url:
                    "https://images.pexels.com/photos/39866/entrepreneur-startup-start-up-man-39866.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                username: e["username"].toString(),
                lokasi: "Mikroskil - Medan",
                imgpost:
                    "https://images.pexels.com/photos/1203161/pexels-photo-1203161.png?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                caption: e["caption"].toString(),
                date: "55 minutes ago",
                statusLike: statusLike,
                tombolLike: () {
                  setState(() {
                    if (statusLike == true) {
                      statusLike = false;
                    } else {
                      statusLike = true;
                    }
                  });
                },
              );
            }).toList(),
          )
        else
          Container()
      ]),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          onTap: (value) {
            if (value == 2) {
              showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                        title: Text('Tambah Post'),
                        content: Container(
                          height: 180,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              //isian username
                              Container(
                                  width: double.infinity,
                                  child: TextField(
                                    controller: ctrlUsername,
                                    decoration: InputDecoration(
                                      label: Text("Username"),
                                    ),
                                  )),

                              SizedBox(height: 16),
                              //isian caption
                              Container(
                                  width: double.infinity,
                                  child: TextField(
                                    maxLines: 3,
                                    controller: ctrlCaption,
                                    decoration: InputDecoration(
                                      label: Text("Caption"),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  dataPostIG.add({
                                    "username": ctrlUsername.text,
                                    "caption": ctrlCaption.text
                                  });
                                });

                                ctrlUsername.clear();
                                ctrlCaption.clear();
                                Navigator.pop(context);
                              },
                              child: Text("Post"))
                        ],
                      ));
            }
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                  size: 32,
                ),
                label: "home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 32,
                ),
                label: "search"),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box_outlined,
                color: Colors.black,
                size: 32,
              ),
              label: "add",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.movie_filter_outlined,
                  color: Colors.black,
                  size: 32,
                ),
                label: "reels"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_pin_outlined,
                  color: Colors.black,
                  size: 32,
                ),
                label: "people"),
          ]),
    );
  }
}
