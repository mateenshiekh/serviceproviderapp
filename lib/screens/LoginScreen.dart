import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:quickcallout/config/colors.dart';
import 'package:quickcallout/screens/HomeScreen.dart';
import 'package:quickcallout/screens/SignUpScreen.dart';
import 'package:quickcallout/widgets/custom_Rect_Button.dart';
import 'package:quickcallout/widgets/custom_text_widget.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer()..onTap = _handlePress;
  }

  _handlePress() {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => HomePage()),
        (Route<dynamic> route) => false);
  }

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
        child: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                  minWidth: constraints.maxWidth,
                  minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text.rich(TextSpan(children: [
                          TextSpan(text: "Skip this: ", style: Theme.of(context).textTheme.bodyText1),
                          TextSpan(
                              recognizer: _tapGestureRecognizer,
                              text: "you can register later",
                              style: Theme.of(context).textTheme.bodyText1.copyWith(fontWeight: FontWeight.bold)),
                        ])),
                      ],
                    ),
                    RoundedCustomButton(
                      lable: "LOGIN",
                      textColor: Colors.white,
                      buttonColor: appyellowColor,
                      onTap: () {},
                    ),
                    Expanded(child: Container()),
                    _tile("Username:", "Mobile Number or Email", false,
                        _usernameController),
                    _tile("Password:", "Type your Password", true,
                        _passwordController),
                    Expanded(child: Container()),
                    RoundedCustomButton(
                      iconforward: true,
                      lable: "GO",
                      textColor: Colors.white,
                      buttonColor: appgreenColor,
                      onTap: () {},
                    ),
                    Expanded(child: Container()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text.rich(TextSpan(children: [
                          TextSpan(text: "Forgot Password: ", style: Theme.of(context).textTheme.bodyText1),
                          TextSpan(
                              text: "Click here",
                              style: Theme.of(context).textTheme.bodyText1.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue)),
                        ])),
                      ],
                    ),
                    Expanded(child: Container()),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(children: <Widget>[
                        Expanded(
                            child: Divider(
                          thickness: 1,
                          color: Colors.black,
                        )),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text("New User", style: Theme.of(context).textTheme.bodyText1,),
                        ),
                        Expanded(
                            child: Divider(
                          thickness: 1,
                          color: Colors.black,
                        )),
                      ]),
                    ),
                    Expanded(child: Container()),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("SignUp Using:", style: Theme.of(context).textTheme.bodyText1,),
                          Container(
                            height: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Container(
                                  height: 75,
                                  width: 75,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/facebook_logo.png"))),
                                ),
                                Container(
                                  height: 75,
                                  width: 75,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/google_logo.jpg"))),
                                ),
                                Container(
                                  height: 75,
                                  width: 75,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/twitter.png"))),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(child: Container()),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(children: <Widget>[
                        Expanded(
                            child: Divider(
                          thickness: 1,
                          color: Colors.black,
                        )),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text("OR", style: Theme.of(context).textTheme.bodyText1,),
                        ),
                        Expanded(
                            child: Divider(
                          thickness: 1,
                          color: Colors.black,
                        )),
                      ]),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    RoundedCustomButton(
                      iconforward: true,
                      lable: "CREATE NEW ACCOUNT",
                      textColor: Colors.white,
                      buttonColor: appgreenColor,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SignUpPage()));
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  _tile(String title, String hint, bool obsecure,
      TextEditingController textEditingController) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: Theme.of(context).textTheme.bodyText1.copyWith(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.65,
            child: OwnTextFieldWidget(
              hintValue: hint,
              obscureText: obsecure,
              controller: textEditingController,
            ),
          ),
        ],
      ),
    );
  }
}
