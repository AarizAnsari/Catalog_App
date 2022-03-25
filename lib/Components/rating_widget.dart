import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
late int rating;

Rating({required this.rating});
  @override
  Widget build(BuildContext context) {
    if(rating<2){
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(rating.toString(),
            style: TextStyle(
                color: Colors.red,
              fontSize: 22
            ),
          ),
          Text("Bad",
            style: TextStyle(
                color: Colors.red,
              fontSize: 12
            ),
          )
        ],
      );
    }
    else if(rating<4&&rating>1){
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(rating.toString(),
            style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 22
            ),
          ),
          Text("Good",
            style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 12
            ),
          )
        ],
      );
    }
    else{
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(rating.toString(),
            style: TextStyle(
                color: Colors.green,
                fontSize: 22
            ),
          ),
          Text("Great",
            style: TextStyle(
                color: Colors.green,
                fontSize: 12
            ),
          )
        ],
      );
    }
  }
}

