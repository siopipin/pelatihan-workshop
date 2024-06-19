import 'package:flutter/material.dart';

class PostIG extends StatelessWidget {
  String url;
  String username;
  String lokasi;
  String imgpost;
  String caption;
  String date;
  bool statusLike;
  VoidCallback tombolLike;
  PostIG({
    super.key,
    required this.url,
    required this.username,
    required this.lokasi,
    required this.imgpost,
    required this.caption,
    required this.date,
    required this.statusLike,
    required this.tombolLike,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //header post
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(url),
                    backgroundColor: Colors.transparent,
                    radius: 20,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(username),
                      Text(lokasi),
                    ],
                  ),
                ],
              ),
              Icon(Icons.more_horiz_rounded)
            ],
          ),
        ),

        SizedBox(height: 16),

        //foto
        Container(
          width: double.infinity,
          height: 350,
          child: Image.network(
            imgpost,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 5),

        //reaksi
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //row kiri
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 0),
                    child: IconButton(
                      onPressed: tombolLike,
                      icon: statusLike == true
                          ? Icon(
                              Icons.heart_broken,
                              size: 30,
                              color: Colors.red,
                            )
                          : Icon(
                              Icons.heart_broken_outlined,
                              size: 30,
                            ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Icon(
                      Icons.insert_comment_outlined,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Icon(
                      Icons.send,
                      size: 30,
                    ),
                  ),
                ],
              ),

              //row kanan
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.bookmark_add_outlined,
                    size: 30,
                  ))
            ],
          ),
        ),

        //caption
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text.rich(TextSpan(children: [
            TextSpan(
                text: username, style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: caption),
          ])),
        ),

        //post time
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            date,
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        )
      ],
    );
  }
}
