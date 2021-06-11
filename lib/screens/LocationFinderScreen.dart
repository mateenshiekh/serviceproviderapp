import 'package:flutter/material.dart';
import 'package:quickcallout/config/colors.dart';
import 'package:quickcallout/screens/ArrivalScreen.dart';
import 'package:quickcallout/widgets/custom_Rect_Button.dart';

class LocationFinderPage extends StatefulWidget {
  final String serviceName;
  final Color mainColor;
  LocationFinderPage(
      {Key key, @required this.serviceName, @required this.mainColor})
      : super(key: key);

  @override
  _LocationFinderPageState createState() => _LocationFinderPageState();
}

class _LocationFinderPageState extends State<LocationFinderPage> {
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
        padding: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            Column(
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
                            .copyWith(color: widget.mainColor),
                      ),
                    ),
                  ],
                ),
                RoundedCustomButton(
                  iconBack: true,
                  lable: widget.serviceName,
                  textColor: Colors.white,
                  buttonColor: widget.mainColor,
                  onTap: () {},
                ),
              ],
            ),
            Expanded(child: Container()),
            Text("In 35 minutes away",
                style: Theme.of(context).textTheme.bodyText1),
            Expanded(child: Container()),
            RoundedCustomButton(
              lable: "Per Hour Rate: Rs. 350",
              textColor: Colors.white,
              buttonColor: appgreenColor,
              onTap: () {},
            ),
            Expanded(child: Container()),
            Text.rich(TextSpan(
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontSize: 11),
                children: [
                  TextSpan(text: "Click here for different: "),
                  TextSpan(
                      text: "Time or Location",
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.blue)),
                ])),
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              child: Stack(
                children: <Widget>[
                  Container(
                    color: Colors.grey,
                    child: Center(
                      child: Text("Map will be displayed here",
                          style: Theme.of(context).textTheme.bodyText1),
                    ),
                  ),
                  Positioned(
                    bottom: 2,
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              FloatingActionButton(
                                heroTag: '2',
                                backgroundColor: appgreenColor,
                                onPressed: () {},
                                child: Icon(
                                  Icons.call,
                                  color: Colors.white,
                                ),
                              ),
                              FloatingActionButton(
                                heroTag: '1',
                                onPressed: () {},
                                child: Icon(
                                  Icons.chat,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        RoundedCustomButton(
                          elevation: 10,
                          iconforward: true,
                          lable: "CONFIRM BOOKING",
                          textColor: Colors.white,
                          buttonColor: appgreenColor,
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ArrivalPage(
                                      mainColor: widget.mainColor,
                                      serviceName: widget.serviceName,
                                    )));
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
