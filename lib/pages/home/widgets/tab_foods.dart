import '/pages/home/widgets/tab_featured.dart';
import '/pages/home/widgets/tab_new.dart';
import '/pages/home/widgets/tab_popular.dart';
import '/theme/apptheme.dart';
import 'package:flutter/material.dart';
import '/pages/perfilmedica_page.dart';

class TabFoods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 200,
              child: TabFeatured()
              // TabPopular(),
              //  TabNew(),
              ,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                left: 15.0,
              ),
              child: Text(
                'Find a doctor with specialist',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              //color: Colors.red,
              margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
              width: double.infinity,
              height: 80.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Perfilmedica(),
                        ),
                      );
                    },
                    child: _cardTipo3(
                      title: "Cardiology",
                      icondata: "0X2661",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Perfilmedica(),
                        ),
                      );
                    },
                    child: _cardTipo3(
                      title: "Dentistry",
                      icondata: "0x1F9B7",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Perfilmedica(),
                        ),
                      );
                    },
                    child: _cardTipo3(
                      title: "Neurology",
                      icondata: "0x1F9E0",
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                left: 12.0,
                right: 20.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Doctors',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'See All',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.navigate_next,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              //color: Colors.red,
              height: 250.0,
              margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
              width: double.infinity,
              child: ListView(
                children: [
                  _elemento(
                    title: "Dra.Meredith Grey",
                    path: "assets/1.png",
                  ),
                  _elemento(
                    title: "Dra. Kepner",
                    path: "assets/2.png",
                  ),
                  _elemento(
                    title: "Dr. Dereck Sheppar",
                    path: "assets/3.png",
                  ),
                ],
              ),
            ),
          ]),
    );
  }
}

Widget _cardTipo3({
  required String title,
  required String icondata,
}) {
  return Container(
    width: 220.0,
    height: double.infinity,
    margin: EdgeInsets.only(left: 10.0, top: 10.0, right: 20.0, bottom: 10.0),
    padding: EdgeInsets.all(5.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 3,
          blurRadius: 2,
          offset: Offset(0, 5),
        ),
      ],
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Container(
                width: 50.0,
                height: 40.0,
                child: Icon(
                  IconData(int.parse(icondata),
                      fontFamily: 'Material Design Icons'),
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(90, 207, 197, 1.0),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                    topRight: Radius.circular(5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _elemento({
  required String title,
  required String path,
}) {
  return Container(
    height: 100.0,
    child: Padding(
      padding: const EdgeInsets.only(
          top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(3, 5),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.only(bottom: 1.0),
          child: ListTile(
            title: Text(
              title,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Specialist",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black45,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 17,
                      color: Color.fromRGBO(255, 245, 2, 1.0),
                    ),
                    Icon(
                      Icons.star,
                      size: 17,
                      color: Color.fromRGBO(255, 245, 2, 1.0),
                    ),
                    Icon(
                      Icons.star,
                      size: 17,
                      color: Color.fromRGBO(255, 245, 2, 1.0),
                    ),
                    Icon(
                      Icons.star,
                      size: 17,
                      color: Color.fromRGBO(255, 245, 2, 1.0),
                    ),
                    Icon(
                      Icons.star_outline,
                      size: 17,
                      color: Color.fromRGBO(223, 223, 223, 1.0),
                    ),
                  ],
                ),
              ],
            ),
            leading: Container(
              width: 60.0,
              height: 80.0,
              decoration: BoxDecoration(
                color: Color.fromRGBO(90, 207, 197, 1.0),
                borderRadius: BorderRadius.circular(5.0),
                image: DecorationImage(
                  image: AssetImage(path),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            trailing: Column(
              children: [
                Icon(Icons.bookmark_border),
                Text(
                  "",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black45,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
