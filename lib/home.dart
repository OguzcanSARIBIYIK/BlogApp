import 'package:BlogApp/cards.dart';
import 'package:BlogApp/category.dart';
import 'package:BlogApp/news.dart';
import 'package:BlogApp/topic.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String, dynamic>> topicList = [
    {
      "color": Color(0xff39C7D8),
      "title": "Creative",
    },
    {
      "color": Color(0xffFF9D9B),
      "title": "Traveling",
    },
    {
      "color": Color(0xff86ADFF),
      "title": "Cycling",
    },
    {
      "color": Color(0xff6934FF),
      "title": "Business",
    },
  ];

  List<Map<String, dynamic>> newsList = [
    {
      "color": Color(0xffFF9D9B),
      "title": "CREATIVE",
      "description": "Lorem Ipsum is simply dummy text of the printing and..",
    },
    {
      "color": Color(0xff53CFB1),
      "title": "TRAVEL",
      "description": "Lorem Ipsum is simply dummy text of the printing and..",
    },
    {
      "color": Color(0xff418DFF),
      "title": "CODING",
      "description": "Lorem Ipsum is simply dummy text of the printing and..",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(14),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 48,
                      width: 48,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/user.jpg"),
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Expanded(
                      flex: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Oğuzcan SARIBIYIK",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Premium User",
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.grey[200],
                            size: 20,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Icon(
                            Icons.menu,
                            color: Colors.grey[200],
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 22),
                Category(),
                SizedBox(height: 22),
                Cards(),
                SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Text(
                        "Hot Topics",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Icon(
                        Icons.short_text,
                        color: Colors.grey,
                        size: 20,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 14),
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: AlwaysScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Topic(
                        color: this.topicList[index]["color"],
                        title: this.topicList[index]["title"],
                      );
                    },
                    itemCount: this.topicList.length,
                  ),
                ),
                SizedBox(height: 14),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Latest News",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 14),
                for (var news in this.newsList)
                  News(
                    color: news["color"],
                    title: news["title"],
                    description: news["description"],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
