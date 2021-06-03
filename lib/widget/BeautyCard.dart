import 'package:flutter/material.dart';
import 'package:scaffold_app/model/BeautyModel.dart';

class BeautyCard extends StatelessWidget {
  BeautyModel beautyModel;

  BeautyCard({this.beautyModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 150,
            width: 260,
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 8,
              color: Color(0xFFE0E0E0),
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey[500], width: 0),
                borderRadius: BorderRadius.circular(20),
              ),
              margin: new EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: new Image.asset(
                  beautyModel.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Flexible(
            child: Text(
              beautyModel.title,
              style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff2E7C32),
                  //color: const Color(0x5cceb9),
                  fontFamily: 'Roboto'),
            ),
          ),
          Container(
            height: 20,
            width: 250,
            margin: EdgeInsets.fromLTRB(20, 5, 0, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Icon(
                    Icons.thumb_up,
                    color: Color(0xff2E7C32),
                    size: 14,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 3),
                  child: Text(
                    beautyModel.like,
                    style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                  ),
                ),
                SizedBox(
                  width: 18,
                ),
                Container(
                  child: Icon(
                    Icons.thumb_down,
                    color: Color(0xffac5653),
                    size: 14,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 3),
                  child: Text(
                    beautyModel.dislike,
                    style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 14,
                      color: Color(0xff2E7C32),
                    ),
                    Icon(
                      Icons.star,
                      size: 14,
                      color: Color(0xff2E7C32),
                    ),
                    Icon(
                      Icons.star,
                      size: 14,
                      color: Color(0xff2E7C32),
                    ),
                    Icon(
                      Icons.star,
                      size: 14,
                      color: Color(0xff2E7C32),
                    ),
                    Icon(
                      Icons.star_half,
                      size: 14,
                      color: Color(0xff2E7C32),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 3),
                      child: Text(
                        beautyModel.rating,
                        style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                      ),
                    )
                  ],
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
