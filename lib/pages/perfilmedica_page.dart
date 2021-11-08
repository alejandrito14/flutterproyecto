import 'package:flutter/material.dart';
import '/pages/confirmmedica_page.dart';

class Perfilmedica extends StatelessWidget {
  const Perfilmedica({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(90, 207, 197, 1.0),
        body: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Container(
                    height: 400.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/1.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1.0),
              child: Container(
                width: double.infinity,
                height: 482.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.white, spreadRadius: 3),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 430.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 40.0, left: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Dr. Meredith Grey',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0),
                                    ),
                                    Text(
                                      'Especialist',
                                      style: TextStyle(fontSize: 14.0),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, right: 10.0),
                                      child: Container(
                                        width: 60.0,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(253, 175, 74, 1.0),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Icon(
                                          Icons.mail,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 60.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromRGBO(90, 207, 197, 1.0),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Icon(
                                        Icons.call,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 38.0, top: 15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 17,
                                  color: Color.fromRGBO(228, 215, 70, 1.0),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 17,
                                  color: Color.fromRGBO(228, 215, 70, 1.0),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 17,
                                  color: Color.fromRGBO(228, 215, 70, 1.0),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 17,
                                  color: Color.fromRGBO(228, 215, 70, 1.0),
                                ),
                                Icon(
                                  Icons.star_outline,
                                  size: 17,
                                  color: Color.fromRGBO(228, 215, 70, 1.0),
                                ),
                                Text('(12344 reviews)',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    )),
                                Container(
                                  padding: const EdgeInsets.only(left: 70.0),
                                  child: Text(
                                    'See all reviews',
                                    style: TextStyle(
                                      color: Color.fromRGBO(90, 207, 197, 1.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.only(
                                  left: 35.0,
                                  right: 28.0,
                                  top: 10.0,
                                  bottom: 10.0),
                              child: Divider(
                                color: Colors.black,
                                height: 15,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 8.0, left: 38.0, right: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'About',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25.0),
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 14),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              'Lorem ipsum dolor sit amet. Maecenas pretium,tincidunt nisl, eu aliquet neque metus at nisl. Praesent congue neque consectetur eros ultricies gravida. Vivamus molestie vitae elit vel tincidunt. Integer sodales justo ut diam fringilla, at dapibus mauris vehicula. Suspendisse potenti. Maecenas auctor laoreet purus sed luctus. In et lorem gravida, ultricies nisi eu, laoreet diam. In vehicula lorem quis ligula dictum, at commodo libero vulputate. Mauris a condimentum nisi. ',
                                          style: TextStyle(color: Colors.grey)),
                                      TextSpan(
                                          text: 'See more ',
                                          style: TextStyle(color: Colors.blue)),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              Confirmmedica_page(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromRGBO(90, 207, 197, 1.0),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Make an appointment',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 19),
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
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
