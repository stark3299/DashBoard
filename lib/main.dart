import 'package:DashBoard/categories_row.dart';
import 'package:DashBoard/pie_chart_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:DashBoard/design.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Smart",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MySmartHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MySmartHome extends StatelessWidget {
  final Design design;
  const MySmartHome({Key key, this.design}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFe6ebf2),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).viewPadding.top + 10,
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "DashBoard",
                        style: TextStyle(
                          letterSpacing: 1.5,
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "nunito",
                        ),
                      ),
                      Design(
                        height1: 55,
                        width1: 55,
                        color: Color(0xFFe6ebf2),
                        offsetB: Offset(-2, -2),
                        offsetW: Offset(2, 2),
                        bLevel: 3.0,
                        iconData: Icons.power_settings_new,
                        iconSize: 30.0,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: Container(
                    height: 70.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xFFe6ebf2),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5.0,
                              offset: Offset(-3, -3),
                              color: Colors.white.withOpacity(.7)),
                          BoxShadow(
                              blurRadius: 5.0,
                              offset: Offset(3, 3),
                              color: Colors.black.withOpacity(.15))
                        ]),
                    child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 23.0),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Color(0xFFe6ebf2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 5.0,
                                        offset: Offset(-3, -3),
                                        color: Colors.white.withOpacity(.7)),
                                    BoxShadow(
                                        blurRadius: 5.0,
                                        offset: Offset(3, 3),
                                        color: Colors.black.withOpacity(.15))
                                  ]),
                              child: Icon(
                                Icons.history,
                                color: Colors.black.withOpacity(.5),
                                size: 25.0,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Period",
                                  style: TextStyle(
                                      fontFamily: "nunito",
                                      color: Colors.black.withOpacity(1.0),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0)),
                              Text("Last 4 months",
                                  style: TextStyle(
                                      fontFamily: "nunito",
                                      color: Colors.black.withOpacity(.7),
                                      fontSize: 17.0))
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 44.0),
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  color: Color(0xFFe6ebf2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0)),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 5.0,
                                        offset: Offset(-3, -3),
                                        color: Colors.white.withOpacity(.7)),
                                    BoxShadow(
                                        blurRadius: 5.0,
                                        offset: Offset(3, 3),
                                        color: Colors.black.withOpacity(.15))
                                  ]),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black.withOpacity(.5),
                                size: 20.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              SizedBox(
                height: 270.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25.0, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 5),
                      Text(
                        'Total Corona Cases',
                        style: TextStyle(
                            fontFamily: "nunito",
                            color: Colors.black.withOpacity(.8),
                            fontSize: 20.0),
                      ),
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            CategoriesRow(),
                            PieChartView(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: Container(
                  height: 90.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xFFe6ebf2),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5.0,
                            offset: Offset(-3, -3),
                            color: Colors.white.withOpacity(.7)),
                        BoxShadow(
                            blurRadius: 5.0,
                            offset: Offset(3, 3),
                            color: Colors.black.withOpacity(.15))
                      ]),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                                color: Color(0xFFe6ebf2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 5.0,
                                      offset: Offset(-3, -3),
                                      color: Colors.white.withOpacity(.7)),
                                  BoxShadow(
                                      blurRadius: 5.0,
                                      offset: Offset(3, 3),
                                      color: Colors.black.withOpacity(.15))
                                ]),
                            child: Container(
                              child: new Image.asset('assets/united.jpg'),
                              margin: EdgeInsets.symmetric(horizontal: 8),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("USA",
                                style: TextStyle(
                                    fontFamily: "nunito",
                                    color: Colors.black.withOpacity(.8),
                                    fontSize: 18.0)),
                            Text("Total Cases - 21.174lakhs",
                                style: TextStyle(
                                    fontFamily: "nunito",
                                    color: Colors.black.withOpacity(1.0),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: Container(
                    height: 90.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xFFe6ebf2),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5.0,
                              offset: Offset(-3, -3),
                              color: Colors.white.withOpacity(.7)),
                          BoxShadow(
                              blurRadius: 5.0,
                              offset: Offset(3, 3),
                              color: Colors.black.withOpacity(.15))
                        ]),
                    child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                  color: Color(0xFFe6ebf2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0)),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 5.0,
                                        offset: Offset(-3, -3),
                                        color: Colors.white.withOpacity(.7)),
                                    BoxShadow(
                                        blurRadius: 5.0,
                                        offset: Offset(3, 3),
                                        color: Colors.black.withOpacity(.15))
                                  ]),
                              child: Container(
                                child: new Image.asset('assets/brazil.jpg'),
                                margin: EdgeInsets.symmetric(horizontal: 8),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Brazil",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(.8),
                                      fontFamily: "nunito",
                                      fontSize: 18.0)),
                              Text("Total Cases - 8.47lakhs",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(1.0),
                                      fontFamily: "nunito",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0))
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: Container(
                    height: 90.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xFFe6ebf2),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5.0,
                              offset: Offset(-3, -3),
                              color: Colors.white.withOpacity(.7)),
                          BoxShadow(
                              blurRadius: 5.0,
                              offset: Offset(3, 3),
                              color: Colors.black.withOpacity(.15))
                        ]),
                    child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                  color: Color(0xFFe6ebf2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0)),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 5.0,
                                        offset: Offset(-3, -3),
                                        color: Colors.white.withOpacity(.7)),
                                    BoxShadow(
                                        blurRadius: 5.0,
                                        offset: Offset(3, 3),
                                        color: Colors.black.withOpacity(.15))
                                  ]),
                              child: Container(
                                child: new Image.asset('assets/russia.jpg'),
                                margin: EdgeInsets.symmetric(horizontal: 8),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Russia",
                                  style: TextStyle(
                                      fontFamily: "nunito",
                                      color: Colors.black.withOpacity(.8),
                                      fontSize: 18.0)),
                              Text("Total Cases - 5.294lakhs",
                                  style: TextStyle(
                                      fontFamily: "nunito",
                                      color: Colors.black.withOpacity(1.0),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0))
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: Container(
                    height: 90.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xFFe6ebf2),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5.0,
                              offset: Offset(-3, -3),
                              color: Colors.white.withOpacity(.7)),
                          BoxShadow(
                              blurRadius: 5.0,
                              offset: Offset(3, 3),
                              color: Colors.black.withOpacity(.15))
                        ]),
                    child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                  color: Color(0xFFe6ebf2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0)),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 5.0,
                                        offset: Offset(-3, -3),
                                        color: Colors.white.withOpacity(.7)),
                                    BoxShadow(
                                        blurRadius: 5.0,
                                        offset: Offset(3, 3),
                                        color: Colors.black.withOpacity(.15))
                                  ]),
                              child: Container(
                                child: new Image.asset('assets/india.jpg'),
                                margin: EdgeInsets.symmetric(horizontal: 8),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("India",
                                  style: TextStyle(
                                      fontFamily: "nunito",
                                      color: Colors.black.withOpacity(.8),
                                      fontSize: 18.0)),
                              Text("Total Cases - 3.264lakhs",
                                  style: TextStyle(
                                      fontFamily: "nunito",
                                      color: Colors.black.withOpacity(1.0),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0))
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: Container(
                    height: 90.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xFFe6ebf2),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5.0,
                              offset: Offset(-3, -3),
                              color: Colors.white.withOpacity(.7)),
                          BoxShadow(
                              blurRadius: 5.0,
                              offset: Offset(3, 3),
                              color: Colors.black.withOpacity(.15))
                        ]),
                    child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                  color: Color(0xFFe6ebf2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0)),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 5.0,
                                        offset: Offset(-3, -3),
                                        color: Colors.white.withOpacity(.7)),
                                    BoxShadow(
                                        blurRadius: 5.0,
                                        offset: Offset(3, 3),
                                        color: Colors.black.withOpacity(.15))
                                  ]),
                              child: Container(
                                child: new Image.asset('assets/united-k.jpg'),
                                margin: EdgeInsets.symmetric(horizontal: 8),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("UK",
                                  style: TextStyle(
                                      fontFamily: "nunito",
                                      color: Colors.black.withOpacity(.8),
                                      fontSize: 18.0)),
                              Text("Total Cases - 3lakhs",
                                  style: TextStyle(
                                      fontFamily: "nunito",
                                      color: Colors.black.withOpacity(1.0),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0))
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ));
  }
}
