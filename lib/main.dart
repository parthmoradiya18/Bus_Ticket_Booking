import 'package:bus_ticket_booking/View/Makemytrip.dart';
import 'package:bus_ticket_booking/View/RedBus.dart';
import 'package:bus_ticket_booking/View/goibibo.dart';
import 'package:bus_ticket_booking/View/yatra.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Bus Ticket Booking",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 120,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(250),
                  ),
                  color: Colors.indigo[200]),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 120,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(250),
                  ),
                  color: Colors.indigo[200]),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(219, 147, 112, 1),
                      padding: const EdgeInsets.all(3),
                      textStyle: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const goibibo(),
                          settings: const RouteSettings(
                            arguments: "https://www.goibibo.com/",
                          ),
                        ),
                      );
                    },
                    child: Text(
                      "goibibo",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.2,
                          wordSpacing: 0.3,
                          color: Colors.black),
                    )),

                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(219, 147, 112, 1),
                      padding: const EdgeInsets.all(3),
                      textStyle: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Makemytrip(),
                          settings: const RouteSettings(
                            arguments: "https://www.makemytrip.com/",
                          ),
                        ),
                      );
                    },
                    child: Text(
                      "Makemytrip",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.2,
                          wordSpacing: 0.3,
                          color: Colors.black),
                    )),

                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(219, 147, 112, 1),
                      padding: const EdgeInsets.all(3),
                      textStyle: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RedBus(),
                          settings: const RouteSettings(
                            arguments: "https://www.redbus.in/",
                          ),
                        ),
                      );
                    },
                    child: Text(
                      "RedBus",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.2,
                          wordSpacing: 0.3,
                          color: Colors.black),
                    )),

                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(219, 147, 112, 1),
                      padding: const EdgeInsets.all(3),
                      textStyle: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const yatra(),
                          settings: const RouteSettings(
                            arguments: "https://www.yatra.com/",
                          ),
                        ),
                      );
                    },
                    child: Text(
                      "yatra",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.2,
                          wordSpacing: 0.3,
                          color: Colors.black),
                    )),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 120,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(250),
                  ),
                  color: Colors.indigo[200]),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 120,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(250),
                  ),
                  color: Colors.indigo[200]),
            ),
          ),
        ],
      ),
    );
  }
}
