import 'package:flutter/material.dart';
import 'package:quickcallout/config/colors.dart';
import 'package:quickcallout/screens/LoginScreen.dart';
import 'package:quickcallout/screens/PaymentMethodScreen.dart';
import 'package:quickcallout/widgets/custom_Rect_Button.dart';
import 'package:quickcallout/widgets/custom_text_widget.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _mobileController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _retypePasswordController = TextEditingController();

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
                        Container(
                          child: Text(
                            "HELLO",
                            style:
                                Theme.of(context).textTheme.headline6.copyWith(
                                    // fontWeight: FontWeight.w600,
                                    color: primaryColor),
                          ),
                        ),
                      ],
                    ),
                    RoundedCustomButton(
                      lable: "CREATE NEW ACCOUNT",
                      textColor: Colors.white,
                      buttonColor: primaryColor,
                      onTap: () {},
                    ),
                    Expanded(child: Container()),
                    _tile("First Name:", "Type your First Name", false,
                        _firstNameController),
                    _tile("Last Name:", "Type your Last Name", false,
                        _lastNameController),
                    _tile("Email Address:", "Type your Email", false,
                        _emailController),
                    _tile("Mobile Number:", "Type your Mobile Number", false,
                        _mobileController),
                    _tile("Password:", "Type your Password", true,
                        _passwordController),
                    _tile("Password:", "Retype your Password", true,
                        _retypePasswordController),
                    Expanded(child: Container()),
                    RoundedCustomButton(
                      iconforward: true,
                      lable: "GO",
                      textColor: Colors.white,
                      buttonColor: appgreenColor,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PaymentMethodPage()));
                      },
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
                          child: Text(
                            "Have Account?",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                        Expanded(
                            child: Divider(
                          thickness: 1,
                          color: Colors.black,
                        )),
                      ]),
                    ),
                    Expanded(child: Container()),
                    RoundedCustomButton(
                      iconforward: true,
                      lable: "LOGIN",
                      textColor: Colors.white,
                      buttonColor: appyellowColor,
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                            (Route<dynamic> route) => false);
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
            style: Theme.of(context)
                .textTheme
                .bodyText1
                .copyWith(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.55,
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
