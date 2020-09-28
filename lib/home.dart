import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _buildCategory({String title}) {
    return Expanded(
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.grey[500],
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildCategory(title: "Business"),
                    _buildCategory(title: "Tech"),
                    _buildCategory(title: "World"),
                    _buildCategory(title: "Politics"),
                    _buildCategory(title: "Design"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
