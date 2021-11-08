import 'package:flutter/material.dart';
import '/pages/splash_page.dart';

class Confirmmedica_page extends StatelessWidget {
  const Confirmmedica_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(90, 207, 197, 1.0),
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.only(top: 80.0),
              width: double.infinity,
              height: 300,
              child: Column(
                children: [
                  Icon(
                    Icons.check_circle,
                    size: 60,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      'Booking confirmed',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 50.0, right: 50.0, top: 15.0),
                    child: Text(
                      'Confirmation email and SMS has been sent to your registered email address  ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(top: 126.0),
            child: Container(
              width: double.infinity,
              height: 498.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'ID : 212121234',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0),
                        ),
                        Icon(
                          Icons.edit,
                          color: Colors.grey,
                          size: 20.0,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromRGBO(90, 207, 197, 1.0),
                          image: DecorationImage(
                            image: AssetImage('assets/1.png'),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 5), // changes position of shadow
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 110.0,
                        height: 100.0,
                        child: Column(
                          children: [
                            Text(
                              'Dra.Meredith Grey',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                            Text(
                              'General practitioner ',
                              style:
                                  TextStyle(fontSize: 16.0, color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: Divider(
                      color: Colors.black,
                      height: 36,
                    ),
                  ),
                  Container(
                    width: 350.0,
                    height: 240.0,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 125.0,
                              height: 50.0,
                              child: Text(
                                'Name',
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.grey),
                              ),
                            ),
                            Container(
                              width: 125.0,
                              height: 50.0,
                              child: Text(
                                'Alexander',
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 125.0,
                              height: 50.0,
                              child: Text(
                                'Date',
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.grey),
                              ),
                            ),
                            Container(
                              width: 125.0,
                              height: 50.0,
                              child: Text(
                                '05 Nov 2021',
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 125.0,
                              height: 50.0,
                              child: Text(
                                'Time',
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.grey),
                              ),
                            ),
                            Container(
                              width: 125.0,
                              height: 50.0,
                              child: Text(
                                '10:00 AM',
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SplashPage(),
                                ),
                              );
                            },
                            child: Container(
                              width: double.infinity,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(90, 207, 197, 1.0),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  'Done',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 19),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget myLayoutWidget() {
  return Align(
    alignment: Alignment(0, -0.2),
    child: Text(
      "widget",
      style: TextStyle(fontSize: 30),
    ),
  );
}
