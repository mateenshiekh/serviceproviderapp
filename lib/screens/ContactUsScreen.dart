import 'package:flutter/material.dart';
import 'package:quickcallout/config/colors.dart';
import 'package:quickcallout/widgets/custom_Rect_Button.dart';

class ContactUsPage extends StatefulWidget {
  ContactUsPage({Key key}) : super(key: key);

  @override
  _ContactUsPageState createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
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
                onPressed: () {}),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text(
                  "HAMMAD",
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(color: primaryColor),
                ),
              ),
            ],
          ),
          RoundedCustomButton(
            iconBack: true,
            lable: "Contact US",
            textColor: Colors.white,
            buttonColor: appgreenColor,
            onTap: () {},
          ),
          Expanded(child: Container()),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.call,
                  color: Colors.green,
                  size: 40,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Phone Call",
                  style: Theme.of(context).textTheme.headline6,
                )
              ],
            ),
          ),
          Expanded(child: Container()),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: appyellowColor,
                  size: 40,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Phone SMS",
                  style: Theme.of(context).textTheme.headline6,
                )
              ],
            ),
          ),
          Expanded(child: Container()),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.call,
                  color: Colors.green,
                  size: 40,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Whatsapp Call",
                  style: Theme.of(context).textTheme.headline6,
                )
              ],
            ),
          ),
          Expanded(child: Container()),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.chat,
                  color: Colors.green,
                  size: 40,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Whatsapp Chat",
                  style: Theme.of(context).textTheme.headline6,
                )
              ],
            ),
          ),
          Expanded(child: Container()),
          RoundedCustomButton(
            iconforward: true,
            lable: "Main Menu",
            textColor: Colors.white,
            buttonColor: appgreenColor,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
