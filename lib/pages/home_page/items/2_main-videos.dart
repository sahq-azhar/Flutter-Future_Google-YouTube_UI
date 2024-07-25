import 'package:flutter/material.dart';
import 'package:future_youtube/data/youtube_data.dart';
import 'package:future_youtube/pages/detail_page/details_screen.dart';

class Recommendedvideos extends StatelessWidget {
  final List<YoutubeModel> listData;
  final bool isMiniList;
  final bool isHorizontalList;

  const Recommendedvideos({
    Key? key,
    required this.listData,
    this.isMiniList = false,
    this.isHorizontalList = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceOrientation = MediaQuery.of(context).orientation;
    if (isHorizontalList) {
      return ListView.builder(
        padding: const EdgeInsets.all(8.0),
        scrollDirection: Axis.horizontal,
        itemCount: listData.length,
        itemBuilder: (context, index) {
          return InkWell(
            child: _buildHorizontalList(context, index),
          );
        },
      );
    } else {
      return ListView.separated(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        itemBuilder: (context, index) {
          if (isMiniList || deviceOrientation == Orientation.landscape) {
            return InkWell(
              child: _buildLandscapeList(context, index),
            );
          } else {
            return InkWell(
              child: _buildPortraitList(context, index),
            );
          }
        },
        separatorBuilder: (context, index) => Divider(
          height: 0.0,
          color: Colors.transparent,
        ),
        itemCount: listData.length,
      );
    }
  }

//potrait ki editing
  Widget _buildPortraitList(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 15),
      child: Column(
        children: <Widget>[
          Card(
            shadowColor: Colors.black.withBlue(20),
            elevation: 11,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  width: size.width * 0.96,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(
                        listData[index].thumbNail ??
                            'https://example.com/default_thumbnail.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    ListTile(
                      contentPadding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                      dense: true,
                      leading: IconButton(
                        //main yaha hai---iconbutton better than flat button
                        // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        padding: EdgeInsets.all(0.0),
                        //icon ku bada rakhta ye rakho
                        //shape: CircleBorder(side: BorderSide(color: Colors.pink, width: 2.0)),enable this when using floatingactionbutton
                        icon: Image.network(listData[index].channelAvatar ??
                            'https://example.com/default_thumbnail.jpg'),

                        onPressed: () {
                          if (index == 0)
                            Navigator.of(context).push(MaterialPageRoute<Null>(
                                builder: (BuildContext context) {
                              return DetailsScreen();
                            }));
                        },
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(bottom: 4.0),
                        child: Text(listData[index].title ??
                            'https://example.com/default_thumbnail.jpg'),
                      ),
                      subtitle: Text(
                          "${listData[index].channelTitle} . ${listData[index].viewCount} . ${listData[index].publishedTime}"),
                      trailing: Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 6, 20),
                          //3 dots ka hai
                          child: Icon(Icons.more_vert)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLandscapeList(BuildContext context, int index) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: <Widget>[
          Container(
//          width: MediaQuery.of(context).size.width / 2,
            width: isMiniList
                ? MediaQuery.of(context).size.width / 2
                : 336.0 / 1.5,
            height: isMiniList ? 100.0 : 188.0 / 1.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 5,
                  color: Colors.black.withOpacity(0.4),
                ),
              ],
              image: DecorationImage(
                  image: NetworkImage(
                    listData[index].thumbNail ??
                        'https://example.com/default_thumbnail.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  //contentPadding: const EdgeInsets.all(8.0),
                  dense: isMiniList ? true : false,
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: Text(listData[index].title ??
                        'https://example.com/default_thumbnail.jpg'),
                  ),
                  subtitle: !isMiniList
                      ? Text(
                          "${listData[index].channelTitle} . ${listData[index].viewCount} . ${listData[index].publishedTime}")
                      : Text(
                          "${listData[index].channelTitle} . ${listData[index].viewCount}"),
                  trailing: Container(
                      margin: const EdgeInsets.only(bottom: 30.0),
                      child: Icon(Icons.more_vert)),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: !isMiniList
                      ? IconButton(
                          padding: EdgeInsets.all(0.0),
                          //icon ku bada rakhta ye rakho
                          /* materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,*/
                          //this is for flat button
                          icon: Image.network(listData[index].channelAvatar ??
                              'https://example.com/default_thumbnail.jpg'),
                          onPressed: () {
                            if (index == 0)
                              Navigator.of(context).push(
                                  MaterialPageRoute<Null>(
                                      builder: (BuildContext context) {
                                return DetailsScreen();
                              }));
                          },
                        )
                      : SizedBox(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHorizontalList(BuildContext context, int index) {
    return Container(
      width: 336.0 / 2.2,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(bottom: 4.0),
            width: 336.0 / 2.2,
            height: 188 / 2.2,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  listData[index].thumbNail ??
                      'https://example.com/default_thumbnail.jpg',
                ),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(bottom: 4.0),
                      child: Text(
                        listData[index].title ??
                            'https://example.com/default_thumbnail.jpg',
                        style: TextStyle(fontSize: 12.0),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      listData[index].channelTitle ??
                          'https://example.com/default_thumbnail.jpg',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.more_vert,
                size: 16.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//for this output refer screenshot--20200829-175113
