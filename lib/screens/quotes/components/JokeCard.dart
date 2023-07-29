import 'package:flutter/material.dart';
import 'package:flutter_outputing_lists_p1/constraints.dart';

class JokeCard extends StatelessWidget {
  const JokeCard({Key? key, required this.data}) : super(key: key);

  final data;


  @override
  Widget build(BuildContext context) {
    print(data);
    print('Done...');
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          color: KBlue, borderRadius: BorderRadius.circular(20), ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
                color: KWhite, borderRadius: BorderRadius.circular(20)),
            child: Text(data['type'].toString().toUpperCase()),
          ),
          SizedBox(height: 15,),

          // Setup
          Text(
            data['setup'],
            style: TextStyle(color: Colors.black87, fontSize: 25, fontWeight: FontWeight.w500, letterSpacing: 1.1),
          ),

          // Punchline
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                data['punchline'],
                style: TextStyle(color: Colors.purple, fontSize: 20),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),

          // Like or Dislike
          // SizedBox(height: 10,),
          Row(
            children: <Widget>[
              InkWell(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.thumb_up_outlined),
                  color: KWhite,
                ),
              ),
              SizedBox(width: 30,),
              Icon(
                Icons.thumb_down_outlined,
                color: KWhite,
              ),
            ],
          )

        ],
      ),
    );
  }
}