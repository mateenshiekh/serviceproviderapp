import 'package:flutter/material.dart';
import 'package:quickcallout/config/colors.dart';
import 'package:quickcallout/screens/PaymentMethodScreen.dart';
import 'package:quickcallout/widgets/custom_Rect_Button.dart';

class RecieptPage extends StatefulWidget {
  final Color mainColor;
  RecieptPage({Key key, @required this.mainColor}) : super(key: key);

  @override
  _RecieptPageState createState() => _RecieptPageState();
}

class _RecieptPageState extends State<RecieptPage> {
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
                        style: Theme.of(context).textTheme.headline6.copyWith(
                            // fontWeight: FontWeight.w600,
                            color: widget.mainColor),
                      ),
                    ),
                  ],
                ),
                RoundedCustomButton(
                  lable: "JOB IS DONE",
                  textColor: Colors.white,
                  buttonColor: widget.mainColor,
                  onTap: () {},
                ),
              ],
            ),
            Expanded(child: Container()),
            Column(
              children: <Widget>[
                Text("Start Time: 10:01",
                    style: Theme.of(context).textTheme.bodyText1),
                Text("End Time: 11:27",
                    style: Theme.of(context).textTheme.bodyText1),
              ],
            ),
            Expanded(child: Container()),
            Text(
              "IN 01:26:33",
              style: Theme.of(context).textTheme.bodyText1.copyWith(fontWeight: FontWeight.bold),
            ),
            Expanded(child: Container()),
            Text("Your problem got fixed",
                style: Theme.of(context).textTheme.bodyText1),
            Expanded(child: Container()),
            Text("We charged you for an hour and half",
                style: Theme.of(context).textTheme.bodyText1),
            Expanded(child: Container()),
            Text(
              "Discounts:",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Expanded(child: Container()),
            Text("10% discount will auto apply up to (04) slots",
                style: Theme.of(context).textTheme.bodyText1),
            Text("20% discount will auto apply after (04) slots",
                style: Theme.of(context).textTheme.bodyText1),
            Expanded(child: Container()),
            Theme(
              data: Theme.of(context).copyWith(dividerColor: Colors.white),
              child: DataTable(
                  horizontalMargin: 0,
                  dataRowHeight: 20,
                  headingRowHeight: 25,
                  columnSpacing: 50,
                  columns: [
                    DataColumn(
                        label: Text(
                      "Charges:",
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 13),
                    )),
                    DataColumn(
                        label: Text(
                      "Pak Rup:",
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 13),
                    )),
                    DataColumn(
                        label: Text(
                      "Flag",
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 13),
                    )),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text("Labour Charges:",
                          style: Theme.of(context).textTheme.bodyText1)),
                      DataCell(Text("01:26:33",
                          style: Theme.of(context).textTheme.bodyText1)),
                      DataCell(Text("Rs 525.00",
                          style: Theme.of(context).textTheme.bodyText1))
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Discount:",
                          style: Theme.of(context).textTheme.bodyText1)),
                      DataCell(Text("01 Slot",
                          style: Theme.of(context).textTheme.bodyText1)),
                      DataCell(Text("Rs -17.50",
                          style: Theme.of(context).textTheme.bodyText1))
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Parts Charges",
                          style: Theme.of(context).textTheme.bodyText1)),
                      DataCell(Text("Nil",
                          style: Theme.of(context).textTheme.bodyText1)),
                      DataCell(Text("",
                          style: Theme.of(context).textTheme.bodyText1))
                    ]),
                  ]),
            ),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Total:", style: Theme.of(context).textTheme.bodyText1),
                Text("Rs 507.50", style: Theme.of(context).textTheme.bodyText1),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("GST:", style: Theme.of(context).textTheme.bodyText1),
                Text("Rs 0.0", style: Theme.of(context).textTheme.bodyText1),
              ],
            ),
            Divider(
              thickness: 2,
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Total Charges:",
                    style: Theme.of(context).textTheme.bodyText1),
                Text("Rs 507.50", style: Theme.of(context).textTheme.bodyText1),
              ],
            ),
            Expanded(child: Container()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Payment Method:",
                    style: Theme.of(context).textTheme.bodyText1),
                Text("Cash/Card", style: Theme.of(context).textTheme.bodyText1),
              ],
            ),
            Expanded(child: Container()),
            RoundedCustomButton(
              iconforward: true,
              lable: "PAY Rs. 507.50",
              textColor: Colors.white,
              buttonColor: widget.mainColor,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PaymentMethodPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
