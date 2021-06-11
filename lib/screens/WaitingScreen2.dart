import 'package:flutter/material.dart';
import 'package:quickcallout/config/colors.dart';
import 'package:quickcallout/screens/WaitingScreen3.dart';
import 'package:quickcallout/widgets/custom_Rect_Button.dart';

class WaitingScreenCounter extends StatefulWidget {
  final Color mainColor;
  WaitingScreenCounter({Key key, @required this.mainColor}) : super(key: key);

  @override
  _WaitingScreenState createState() => _WaitingScreenState();
}

class _WaitingScreenState extends State<WaitingScreenCounter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/icon.png'))),
        ),
        title: Container(
          height: 40,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/side_nav_logo.png'))),
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 8),
            child: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: appredColor,
                  size: 40,
                ),
                onPressed: null),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text(
                        "HAMMAD",
                        style: Theme.of(context).textTheme.headline6.copyWith(
                            // fontWeight: FontWeight.w600,
                            color: widget.mainColor),
                      ),
                    ),
                  ],
                ),
                RoundedCustomButton(
                  lable: "WORK HAS STARTED",
                  textColor: Colors.white,
                  buttonColor: appgreenColor,
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => WaitingScreenFinal(mainColor: widget.mainColor,)));
                  },
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Text(
                    "At: 10:01:33",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "If you like, I\'m keeping eye at work.\nYou can still read a book or play games?",
                    style: Theme.of(context).textTheme.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Expanded(child: Container()),
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
              child: GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 1.3,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
                children: <Widget>[
                  _gridItem('BOOKS', appyellowColor, 'it_tech.png'),
                  _gridItem('GAMES', appgreenColor, 'cctv.png'),
                  _gridItem('VIDEOS', Colors.blue, 'counselior.png'),
                  _gridItem('FACTS', primaryColor, 'builder.png'),
                  _gridItem('AUDIO', Colors.pink[700], 'plumber.png'),
                  _gridItem('INTERNET', appredColor, 'electrician.png'),
                  _gridItem('NEED PARTS', Colors.pink[800], 'locksmith.png'),
                  _gridItem('00:03:34', appyellowColor, 'carpenter.png'),
                  _gridItem('STOP WORK', appgreenColor, 'handyman.png'),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      _bottomGridItem('Need Help?', 'Contact Us', appgreenColor,
                          'contact_us.png', () {}),
                      _bottomGridItem('Can\'t Find?', 'More Services',
                          appyellowColor, 'services.png', () {}),
                      _bottomGridItem('Join Us?', 'Become talent',
                          Colors.blue[900], 'become_together.png', () {}),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _bottomGridItem(String helperText, String title, Color titleColor,
      String iconName, Function onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            width: 80,
            // color: Colors.redAccent,
            child: Center(
              child: Text(
                helperText,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 65,
            width: 65,
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage("assets/$iconName"),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.075,
            width: 75,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: titleColor),
            ),
          ),
        ],
      ),
    );
  }

  Widget _gridItem(String title, Color titleColor, String iconName) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
                border: Border.all(width: 1.5, color: titleColor),
                borderRadius: BorderRadius.circular(50)),
            child: Center(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(color: titleColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
