import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/common/CommonTitle.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:flutter_book/model/RecommendData.dart'
    show RecommendModel, RecommendData;

class Recommend extends StatelessWidget {
  final List<RecommendModel> recommendData = RecommendData().recommendData;

  List<Widget> get cardList {
    List<Widget> newArr = [];
    recommendData.forEach((RecommendModel data) {
      newArr.add(_CardItem(
        imageUrl: data.imageUrl,
        title: data.title,
      ));
    });
    return newArr;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CommonTitle(
          title: "推荐",
          onTap: () => {print('点击')},
        ),
        Container(
          height: 140.0,
          margin: EdgeInsets.only(top: 40.0, bottom: 18.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: cardList,
          ),
        )
      ],
    );
  }
}

class _CardItem extends StatelessWidget {
  final String imageUrl;
  final String title;

// 构造方法
  _CardItem({@required this.title, @required this.imageUrl})
      : assert(title != null, imageUrl != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.0,
      margin: EdgeInsets.only(right: 12.0),
      child: Column(
        children: <Widget>[
          Image.network(
            this.imageUrl,
            width: 80.0,
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(this.title,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style:
                  TextStyle(fontSize: 16.0, color: Color(AppColors.fontColor)))
        ],
      ),
    );
  }
}
