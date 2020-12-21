import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsFeed extends StatelessWidget {
  final double cardWidth, cardheight;
  String description;
  Image bodyimages;
  NewsFeed(
      {@required this.cardWidth,
      @required this.cardheight,
      @required this.bodyimages,
      @required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardWidth,
      height: cardWidth * 8,
      color: Colors.red,
      child: _newsfeed(),
    );
  }

  Widget _newsfeed() {
    return Card(
      child: Column(
          children: [_newsfeedNav(), _newsfeedBody(), _newsfeedButton()]),
    );
  }

  Widget _newsfeedNav() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 50,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                OutlineButton(
                  onPressed: () {},
                  child: Text('f',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Text('Facebook App',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Icon(
                  Icons.check_circle,
                  color: Colors.blue,
                  size: 14,
                ),
                Text('updated their cover'),
              ]),
              Row(
                children: [Text('photo')],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Column(
                    children: [Text('Aug 26', style: TextStyle(fontSize: 13))],
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Column(
                    children: [
                      Icon(Icons.stop_circle, size: 8, color: Colors.grey)
                    ],
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Column(
                    children: [
                      Icon(CupertinoIcons.globe, size: 13, color: Colors.grey)
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(width: 20),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Icon(Icons.more_horiz, size: 25)],
          )
        ],
      ),
    );
  }

  Widget _newsfeedBody() {
    return Column(children: [
      _bodytext(),
      Container(
          child: GestureDetector(
        onTap: () {
          print('on tap called');
          // Navigator.push( context,
          //     MaterialPageRoute(
          //       builder: (context) => DetailPage(),
          //     ));
        },
        child: bodyimages,
      ))
    ]);
  }

  Widget _bodytext() {
    return Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          description,
          textAlign: TextAlign.left,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ));
  }

  Widget _newsfeedButton() {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
                child: Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                                color: Colors.blue.shade500,
                                borderRadius: BorderRadius.circular(15)),
                            child: Icon(
                              Icons.thumb_up,
                              size: 15,
                              color: Colors.white,
                            )),
                        Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(15)),
                            child: Icon(
                              Icons.favorite,
                              size: 15,
                              color: Colors.white,
                            )),
                        Text(" 5.3K"),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 110,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      children: [Text("525 Comments ")],
                    ),
                    Column(
                      children: [
                        Icon(Icons.stop_circle, size: 5, color: Colors.black45)
                      ],
                    ),
                    Column(
                      children: [Text(" 187 Shares")],
                    ),
                  ],
                ),
              ],
            )
                // child: Text('Hello this is a print statement'),),
                )),
        _buttons(),
      ],
    );
  }

  Widget _buttons() {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8, left: 40, right: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.thumb_up_alt_outlined,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text('Like')
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.chat_bubble_outline),
                    SizedBox(
                      width: 8,
                    ),
                    Text('Comment')
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Icon(CupertinoIcons.arrowshape_turn_up_right),
                    // Icon(CuportinIcons.arrowshape_turn_up_right),
                    SizedBox(
                      width: 8,
                    ),
                    Text('Share')
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
