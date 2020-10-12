import 'package:flutter/material.dart';

class News extends StatelessWidget {
  Color color;
  String title;
  String description;

  News({
    this.color,
    this.title,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86,
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xff2e303a),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: this.color,
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    child: Text(
                      this.title,
                      style: TextStyle(
                        color: this.color,
                        fontSize: 8,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color(0xff343641),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    this.description,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Icon(
                  Icons.add,
                  color: Colors.white38,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
