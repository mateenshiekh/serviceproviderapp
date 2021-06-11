import 'package:flutter/material.dart';
import 'package:quickcallout/config/colors.dart';
import 'package:quickcallout/screens/RecieptScreen.dart';
import 'package:quickcallout/screens/WaitingScreen.dart';
import 'package:quickcallout/widgets/custom_Rect_Button.dart';

class ArrivalPage extends StatefulWidget {
  final String serviceName;
  final Color mainColor;

  ArrivalPage({Key key, @required this.serviceName, @required this.mainColor}) : super(key: key);

  @override
  _ArrivalPageState createState() => _ArrivalPageState();
}

class _ArrivalPageState extends State<ArrivalPage> {
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
                  lable: "${widget.serviceName} HAS ARRIVED",
                  textColor: Colors.white,
                  buttonColor: widget.mainColor,
                  onTap: () {},
                ),
              ],
            ),
            Expanded(child: Container()),
            Text("Your work will start shortly",
                style: Theme.of(context).textTheme.bodyText1),
            Expanded(child: Container()),
            Container(
              color: Colors.grey,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Center(
                child: Text("Image"),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Container(
              color: Colors.grey,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Center(
                child: Text("Image"),
              ),
            ),
            RoundedCustomButton(
              iconforward: true,
              lable: "STARTING NOW",
              textColor: Colors.white,
              buttonColor: appgreenColor,
              onTap: () {
                // waiting screens here
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => WaitingScreen(mainColor: widget.mainColor,)));
              },
            ),
          ],
        ),
      ),
    );
  }
}
