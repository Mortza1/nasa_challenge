import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:url_launcher/url_launcher.dart';

class waterre extends StatelessWidget {
  final String title;
  final String theme;
  final String date;
  final String language;
  final String level;
  final String type;
  final String link;

  const waterre(
      {Key? key,
      required this.title,
      required this.theme,
      required this.date,
      required this.language,
      required this.level,
      required this.type,
      required this.link})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse(link);
    return Container(
      width: 808,
      height: 248,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white, width: 4),
          gradient: const LinearGradient(
              colors: [
                Color(0xff055ce8),
                Color(0xff2065ed),
                Color(0xff3c71f1),
                Color(0xff597ff6),
                Color(0xff7791fa),
                Color(0xff96a6ff),
              ],
              begin: Alignment.centerLeft,
              end: Alignment(0.8, 1),
              tileMode: TileMode.mirror)),
      child: Column(
        children: [
          Container(
            height: 160,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Flexible(
                  child: Container(
                      width: 550,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Flexible(
                            child: Text(
                          title,
                          style: const TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontFamily: 'Anton'),
                        )),
                      )),
                ),
                Container(
                    width: 150,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                          child: Text(
                        theme,
                        style: const TextStyle(
                            fontSize: 20,
                            fontFamily: 'Anton',
                            color: Colors.white),
                      )),
                    )),
              ],
            ),
          ),
          Container(
            color: Colors.black,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 400,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      level,
                      style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'Anton',
                          fontSize: 20),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Language: $language",
                            style: const TextStyle(
                                fontSize: 10, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            "type: $type",
                            style: const TextStyle(
                                fontSize: 10, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            "date: $date",
                            style: const TextStyle(
                                fontSize: 10, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                    width: 150,
                    height: 50,
                    child: MaterialButton(
                        minWidth: 100,
                        onPressed: () => {launchUrl(_url)},
                        color: Colors.white,
                        hoverColor: Colors.purpleAccent,
                        hoverElevation: 34,
                        textColor: Colors.black,
                        splashColor: Colors.purple,
                        child: const Center(
                            child: Text(
                          "Start Course",
                          style: TextStyle(fontFamily: 'Anton'),
                        )))),
                Container(
                    width: 100,
                    child: Center(
                      child: LikeButton(
                        circleColor: const CircleColor(
                            start: Color(0xff00ddff), end: Color(0xff0099cc)),
                        bubblesColor: const BubblesColor(
                          dotPrimaryColor: Color(0xff33b5e5),
                          dotSecondaryColor: Color(0xff0099cc),
                        ),
                        likeBuilder: (bool isLiked) {
                          return Icon(
                            Icons.thumb_up_sharp,
                            color:
                                isLiked ? Colors.deepPurpleAccent : Colors.grey,
                          );
                        },
                        likeCount: 665,
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
