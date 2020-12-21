import 'package:flutter/material.dart';
import 'package:simple_facebookclone/screen/newsfeed.dart';

class Homepage extends StatelessWidget {
  double height;
  double width;

  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }

  Widget _body() {
    return ListView(
      children: [
        NewsFeed(
          cardWidth: width,
          cardheight: height,
          description:
              "नेकपा अध्यक्ष पुष्पकमल दाहाल र वरिष्ठ नेता माधव नेपाल समूहले बानेश्वरमा गरेको सांसदहरुको भेलाले संसद् बैठक बोलाउन माग गर्ने निर्णय गरेको छ ।",
          bodyimages: Image.network(
              "https://assets-cdn.kantipurdaily.com/uploads/source/news/kantipur/2020/third-party/badal-and-bamdev-1-21122020043615-1000x0.jpg"),
        )
      ],
    );
  }

  Widget _appBar() {
    return AppBar(
      title: Text("Facebook"),
      centerTitle: true,
    );
  }
}
