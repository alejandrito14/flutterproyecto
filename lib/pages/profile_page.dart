import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          width: double.infinity,
          height: 260.0,
          padding: EdgeInsets.only(top: 20.0),
          color: Color.fromRGBO(240, 241, 236, 1.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.more_horiz_outlined,
                    color: Color.fromRGBO(240, 241, 236, 1.0),
                  ),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

Widget _number({
  required int num,
  required String subtitle,
}) {
  return Column(
    children: [
      Text(
        "title",
        style: TextStyle(
          color: Color.fromRGBO(180, 184, 187, 1.0),
          fontWeight: FontWeight.bold,
          fontSize: 40.0,
        ),
      ),
      Text(
        "title",
        style: TextStyle(
          color: Color.fromRGBO(180, 184, 187, 1.0),
          fontWeight: FontWeight.bold,
          fontSize: 40.0,
        ),
      ),
    ],
  );
}
