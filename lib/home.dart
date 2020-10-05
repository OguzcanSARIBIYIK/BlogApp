import 'package:BlogApp/cards.dart';
import 'package:BlogApp/category.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                  height: 110,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: AlwaysScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(6),
                        padding: EdgeInsets.all(8),
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.red,
                        ),
                        child: Text(
                          "Creative",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      );
                    },
                    itemCount: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
