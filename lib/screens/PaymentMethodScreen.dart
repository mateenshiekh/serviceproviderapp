import 'package:flutter/material.dart';
import 'package:quickcallout/config/colors.dart';
import 'package:quickcallout/screens/HomeScreen.dart';
import 'package:quickcallout/widgets/custom_Rect_Button.dart';
import 'package:quickcallout/widgets/custom_text_widget.dart';

class PaymentMethodPage extends StatefulWidget {
  PaymentMethodPage({Key key}) : super(key: key);

  @override
  _PaymentMethodPageState createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
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
        child: LayoutBuilder(
            builder: (context, constraints) => SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                        minWidth: constraints.maxWidth,
                        minHeight: constraints.maxHeight),
                    child: IntrinsicHeight(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
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
                                          .copyWith(
                                              // fontWeight: FontWeight.w600,
                                              color: primaryColor),
                                    ),
                                  ),
                                ],
                              ),
                              RoundedCustomButton(
                                lable: "PAYMENT METHOD",
                                textColor: Colors.white,
                                buttonColor: appyellowColor,
                                onTap: () {},
                              ),
                            ],
                          ),
                          Expanded(child: Container()),
                          Text("We won't charge you until you got fixed.",
                              style: Theme.of(context).textTheme.bodyText1),
                          Expanded(child: Container()),
                          Text(
                            "Payment Method:",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          Expanded(child: Container()),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                height: 50,
                                width: 75,
                                child: Center(child: Text("VISA")),
                                decoration: BoxDecoration(
                                    border: Border.all(width: 0.5)),
                              ),
                              Container(
                                height: 50,
                                width: 75,
                                child: Center(child: Text("MASTER")),
                                decoration: BoxDecoration(
                                    border: Border.all(width: 0.5)),
                              ),
                              Container(
                                height: 50,
                                width: 75,
                                child: Center(child: Text("COD")),
                                decoration: BoxDecoration(
                                    border: Border.all(width: 0.5)),
                              ),
                            ],
                          ),
                          Expanded(child: Container()),
                          Text(
                            "Home Address:",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          Expanded(child: Container()),
                          Container(
                            margin: EdgeInsets.all(2),
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: OwnTextFieldWidget(
                              hintValue: "Door Number",
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(2),
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: OwnTextFieldWidget(
                              hintValue: "Post Code",
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(2),
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: OwnTextFieldWidget(
                              hintValue: "Note: Flat 2, Top Buzzer, etc",
                            ),
                          ),
                          Expanded(child: Container()),
                          Text("Work / Billing Address:"),
                          Expanded(child: Container()),
                          Container(
                            margin: EdgeInsets.all(2),
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: OwnTextFieldWidget(
                              hintValue: "Door Number",
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(2),
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: OwnTextFieldWidget(
                              hintValue: "Post Code",
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(2),
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: OwnTextFieldWidget(
                              hintValue: "Note: Flat 2, Top Buzzer, etc",
                            ),
                          ),
                          Expanded(child: Container()),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text.rich(TextSpan(
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .copyWith(fontSize: 11),
                                    children: [
                                      TextSpan(
                                          text: "I have read and agree with "),
                                      TextSpan(
                                          text: "Terms & Conditions",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1
                                              .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.blue)),
                                      TextSpan(text: ",\n "),
                                      TextSpan(
                                          text: "Payment Method ",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1
                                              .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.blue)),
                                      TextSpan(text: "by clicking complete."),
                                    ]))
                              ],
                            ),
                          ),
                          Expanded(child: Container()),
                          RoundedCustomButton(
                            iconforward: true,
                            lable: "COMPLETE",
                            textColor: Colors.white,
                            buttonColor: appgreenColor,
                            onTap: () {
                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()),
                                  (Route<dynamic> route) => false);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
      ),
    );
  }
}
