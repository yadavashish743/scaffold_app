import 'package:flutter/material.dart';
import 'package:scaffold_app/model/BeautyModel.dart';
import 'package:scaffold_app/widget/BeautyCard.dart';

class BeautyView extends StatefulWidget {
  @override
  _BeautyViewState createState() => _BeautyViewState();
}

class _BeautyViewState extends State<BeautyView> {
  List<BeautyModel> list = new List();

  @override
  void initState() {
    // TODO: implement initState
    getBeautyData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          height: 300,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            SizedBox(
              height: 20.0,
              width: double.infinity,
              child: Divider(
                thickness: 1,
                color: const Color(0xff5cceb9),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    flex: 4,
                    child: ListTile(
                      leading: Icon(
                        Icons.thumb_up,
                        color: const Color(0xffac5653),
                      ),
                      title: Text(
                        'Recommended for You',
                        style: TextStyle(
                            fontSize: 16.0,
                            color: const Color(0xffac5653),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold),
                      ),
                      minLeadingWidth: 10,
                    )),
                Expanded(
                    flex: 1,
                    child: Text(
                      'View All',
                      style: TextStyle(
                          fontSize: 15.0,
                          color: const Color(0xffac5653),
                          fontFamily: 'Roboto'),
                    ))
              ],
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => new BeautyCard(
                  beautyModel: list[index],
                ),
                itemCount: list.length,
              ),
            ),
            SizedBox(
              height: 30.0,
              width: double.infinity,
              child: Divider(
                thickness: 3,
                color: const Color(0xff5cceb9),
              ),
            )
          ])
          /*child: new ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => new BeautyCard(beautyModel: list[index],),
          itemCount: list.length,
          padding: new EdgeInsets.all(20.0),
        ),*/
          ),
    );
  }

  void getBeautyData() {
    setState(() {
      list.clear();
      list.add(new BeautyModel(
          id: 1,
          imageUrl: "assets/images/spa1.jpeg",
          like: '221',
          dislike: '1.1k',
          title: 'Markiza Spa, Sports City',
          rating: "4.5"));
      list.add(new BeautyModel(
          id: 2,
          imageUrl: "assets/images/spa2.jpeg",
          like: '4.5k',
          dislike: '56',
          title: 'Rixos Spa, Sports City',
          rating: "4.5"));
      list.add(new BeautyModel(
          id: 3,
          imageUrl: "assets/images/spa3.jpeg",
          like: '521',
          dislike: '1.6k',
          title: 'Delphi Spa, Sports City',
          rating: '4.5'));
      list.add(new BeautyModel(
          id: 4,
          imageUrl: "assets/images/spa4.jpeg",
          like: '21',
          dislike: '5',
          title: 'Brass Spa, Sports City',
          rating: '4.5'));
      list.add(new BeautyModel(
          id: 5,
          imageUrl: "assets/images/spa5.jpeg",
          like: '1.1k',
          dislike: '2.5k',
          title: 'DJ Spa, Sports City',
          rating: '4.5'));
      list.add(new BeautyModel(
          id: 6,
          imageUrl: "assets/images/spa6.jpeg",
          like: '2.1k',
          dislike: '29',
          title: 'Surthi Spa, Sports City',
          rating: '4.5'));
      list.add(new BeautyModel(
          id: 7,
          imageUrl: "assets/images/spa7.jpeg",
          like: '32k',
          dislike: '11',
          title: 'Wooden Spa, Sports City',
          rating: '4.5'));
    });
  }
}
