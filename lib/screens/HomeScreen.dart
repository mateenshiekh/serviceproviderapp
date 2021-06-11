import 'package:flutter/material.dart';
import 'package:quickcallout/config/colors.dart';
import 'package:quickcallout/screens/ContactUsScreen.dart';
import 'package:quickcallout/screens/LocationFinderScreen.dart';
import 'package:quickcallout/widgets/custom_text_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Container(
        width: MediaQuery.of(context).size.width / 1.5,
        child: Drawer(
          child: Container(
            color: Colors.grey[400],
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  child: Container(
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                            right: 0,
                            top: 0,
                            child: IconButton(
                                icon: Icon(
                                  Icons.cancel,
                                  color: appredColor,
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                })),
                        Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  CircleAvatar(
                                    minRadius: 40,
                                    maxRadius: 40,
                                    child: Image.asset(
                                        'assets/become_together.png'),
                                  ),
                                  Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: Icon(
                                        Icons.add_box,
                                        color: Colors.blue[900],
                                      ))
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "HAMMAD",
                                style: TextStyle(color: Colors.blue[900]),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.work,
                    color: primaryColor,
                  ),
                  title: Text("Work History"),
                ),
                ListTile(
                  leading: Icon(
                    Icons.card_giftcard,
                    color: appgreenColor,
                  ),
                  title: Text("Gift & promos"),
                ),
                ListTile(
                  leading: Icon(
                    Icons.payment,
                    color: Colors.pink,
                  ),
                  title: Text("Payments"),
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: primaryColor,
                  ),
                  title: Text("Settings"),
                ),
                ListTile(
                  leading: Icon(
                    Icons.print,
                    color: appyellowColor,
                  ),
                  title: Text("Send Feedback"),
                ),
                ListTile(
                  leading: Icon(
                    Icons.lens,
                    color: Colors.pink,
                  ),
                  title: Text("Legal & Privacy"),
                ),
              ],
            ),
          ),
        ),
      ),
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
                onPressed: () {
                  _scaffoldKey.currentState.openEndDrawer();
                }),
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
                        "USERNAME",
                        style: Theme.of(context).textTheme.headline6.copyWith(
                            // fontWeight: FontWeight.w600,
                            color: primaryColor),
                      ),
                    ),
                  ],
                ),
                OwnTextFieldWidget(
                  hintValue: "What can I help you with?",
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.search,
                      color: primaryColor,
                    ),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.mic,
                      color: primaryColor,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              child: GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 1.2,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
                children: <Widget>[
                  _gridItem('IT Engineer', appgreenColor, 'it_tech.png'),
                  _gridItem('CCTV Tech', Colors.blue, 'cctv.png'),
                  _gridItem('Counselor', appyellowColor, 'counselior.png'),
                  _gridItem('Builder', appredColor, 'builder.png'),
                  _gridItem('Plumber', Colors.blue, 'plumber.png'),
                  _gridItem('Electrician', appredColor, 'electrician.png'),
                  _gridItem('Lock Smith', appyellowColor, 'locksmith.png'),
                  _gridItem('Carpenter', Colors.pink, 'carpenter.png'),
                  _gridItem('HandyMan', appgreenColor, 'handyman.png'),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.22,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      _bottomGridItem('Need Help?', 'Contact Us', appgreenColor,
                          'contact_us.png', () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ContactUsPage()));
                      }),
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
            height: 75,
            width: 75,
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
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => LocationFinderPage(
                serviceName: title.toUpperCase(), mainColor: titleColor)));
      },
      child: Column(
        children: <Widget>[
          Container(
            height: 75,
            width: 75,
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage("assets/$iconName"),
            ),
          ),
          Container(
            // width: 75,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: titleColor),
            ),
          )
        ],
      ),
    );
  }
}
