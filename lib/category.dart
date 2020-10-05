import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<Map<String, String>> _categoryList = [
    {"title": "Business"},
    {"title": "Tech"},
    {"title": "World"},
    {"title": "Politics"},
    {"title": "Design"},
  ];
  int _selectedCategory = 0;

  _buildCategory({String title, bool isSelected, int index}) {
    return Expanded(
      child: Center(
        child: GestureDetector(
          onTap: () => setState(() {
            this._selectedCategory = index;
          }),
          child: Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  color: isSelected ? Color(0xff7E5EFF) : Colors.grey[500],
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 2),
              if (isSelected)
                Row(
                  children: [
                    Spacer(
                      flex: 3,
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Color(0xff7E5EFF),
                        height: 1.5,
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (var i = 0; i < this._categoryList.length; i++)
          _buildCategory(
            title: this._categoryList[i]["title"],
            isSelected: i == this._selectedCategory,
            index: i,
          ),
      ],
    );
  }
}
