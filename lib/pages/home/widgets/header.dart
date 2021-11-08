import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(top: 45.0, left: 25.0, right: 25.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Welcome,',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage("assets/grey1.png"),
                    backgroundColor: Colors.transparent,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text('Alexander',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                )),
          ),
        ]),

        Padding(
          padding: EdgeInsets.only(
            left: 25.0,
            right: 25.0,
            top: 10.0,
          ),
          child: Container(
            width: 450.0,
            height: 50.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            alignment: Alignment.center,
            child: TextFormField(
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
              ),
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.list),
                border: InputBorder.none,
              ),
            ),
          ),
        ),

        // ignore: sized_box_for_whitespace

        // ignore: sized_box_for_whitespace
      ],
    );
  }
}
