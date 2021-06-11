// import 'package:flutter/material.dart';
// import 'package:quickcallout/config/colors.dart';
// import 'package:quickcallout/screens/LocationFinderScreen.dart';
// import 'package:quickcallout/widgets/custom_Rect_Button.dart';
// import 'package:quickcallout/widgets/custom_text_widget.dart';

// class ServicePage extends StatefulWidget {
//   final String serviceName;
//   ServicePage({Key key, @required this.serviceName}) : super(key: key);

//   @override
//   _ServicePageState createState() => _ServicePageState();
// }

// class _ServicePageState extends State<ServicePage> {
//   @override
//   Widget build(BuildContext context) {
    
//     return Scaffold(
//       appBar: AppBar(
//         leading: Container(),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(8.0),
//         child: LayoutBuilder(builder: (context, constraint) {
//           return SingleChildScrollView(
//             child: ConstrainedBox(
//               constraints: BoxConstraints(
//                   minWidth: constraint.maxWidth,
//                   minHeight: constraint.maxHeight),
//               child: IntrinsicHeight(
//                 child: Column(
//                   mainAxisSize: MainAxisSize.max,
//                   children: <Widget>[
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         Container(
//                           child: Text(
//                             "HAMMAD",
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .headline6
//                                 .copyWith(color: primaryColor),
//                           ),
//                         ),
//                       ],
//                     ),
//                     RoundedCustomButton(
//                       iconBack: true,
//                       lable: widget.serviceName,
//                       textColor: Colors.white,
//                       buttonColor: primaryColor,
//                       onTap: () {},
//                     ),
//                     Expanded(child: Container()),
//                     Container(
//                       width: MediaQuery.of(context).size.width,
//                       child: Column(
//                         children: <Widget>[
//                           Text(
//                             "You can book Plumber yourself by clicking",
//                             style: Theme.of(context).textTheme.bodyText1,
//                           ),
//                           Text("FIND YOUR ADDRESS",
//                               style: Theme.of(context).textTheme.bodyText1),
//                           Text("at the end of this page.",
//                               style: Theme.of(context).textTheme.bodyText1),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Text(
//                             "Or you can take advise before booking and Advisor can guide you about your problem.",
//                             style: Theme.of(context).textTheme.bodyText1,
//                             textAlign: TextAlign.center,
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Text.rich(TextSpan(children: [
//                             TextSpan(
//                                 text: "Advise is always ",
//                                 style: Theme.of(context).textTheme.bodyText1),
//                             TextSpan(
//                                 text: "free!",
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .bodyText1
//                                     .copyWith(fontWeight: FontWeight.bold)),
//                           ]))
//                         ],
//                       ),
//                     ),
//                     Expanded(child: Container()),
//                     RoundedCustomButton(
//                       borderColor: Colors.black,
//                       lable: "ADVISE",
//                       textColor: Colors.black,
//                       buttonColor: Colors.transparent,
//                       onTap: () {},
//                     ),
//                     Expanded(child: Container()),
//                     Column(
//                       children: <Widget>[
//                         Text("Call", style: Theme.of(context).textTheme.bodyText1),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         IconButton(
//                             icon: Icon(
//                               Icons.call,
//                               color: appgreenColor,
//                             ),
//                             onPressed: () {}),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text("Message", style: Theme.of(context).textTheme.bodyText1),
//                       ],
//                     ),
//                     Expanded(child: Container()),
//                     OwnTextFieldWidget(
//                       hintValue: "Start typing here for advise",
//                       prefixIcon: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Icon(
//                           Icons.camera_alt,
//                           color: primaryColor,
//                         ),
//                       ),
//                       suffixIcon: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Icon(
//                           Icons.mic,
//                           color: primaryColor,
//                         ),
//                       ),
//                     ),
//                     Expanded(child: Container()),
//                     Container(
//                       width: MediaQuery.of(context).size.width,
//                       child: Column(
//                         children: <Widget>[
//                           Text("No Thanks!", style: Theme.of(context).textTheme.bodyText1),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Text("I am sure I need Plumber at my premises.", style: Theme.of(context).textTheme.bodyText1),
//                         ],
//                       ),
//                     ),
//                     Expanded(child: Container()),
//                     RoundedCustomButton(
//                       iconforward: true,
//                       lable: "FIND YOUR ADDRESS",
//                       textColor: Colors.white,
//                       buttonColor: appgreenColor,
//                       onTap: () {
//                         Navigator.of(context).push(MaterialPageRoute(
//                             builder: (context) => LocationFinderPage(serviceName: widget.serviceName,)));
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         }),
//       ),
//     );
//   }
// }
