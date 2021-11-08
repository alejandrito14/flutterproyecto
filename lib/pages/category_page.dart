import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            InkWell(
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 30.0,
                        right: 300.0,
                      ),
                      child: new IconButton(
                        icon: new Icon(Icons.chevron_left),
                        iconSize: 30.0,
                        onPressed: () {
                          print('Telefono Clickeado');
                        },
                      ),
                    ))),
            InkWell(
              child: Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(top: 30.0),
                  child: new IconButton(
                    icon: new Icon(Icons.more_horiz),
                    iconSize: 30.0,
                    onPressed: () {
                      /*Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DeliveryScreen()),
                            );*/
                    },
                  ),
                ),
              ),
            ),
          ]),
          Padding(
            padding: EdgeInsets.only(
              left: 25.0,
              right: 25.0,
              top: 40.0,
            ),
            child: Text(
              "Search",
              style: TextStyle(
                color: Color.fromRGBO(180, 184, 187, 1.0),
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 25.0,
              right: 25.0,
              top: 30.0,
            ),
            child: Container(
              width: 450.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: Color.fromRGBO(224, 224, 224, 1.0),
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
                  suffixIcon: Icon(Icons.mic),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 25.0,
              right: 25.0,
              top: 40.0,
            ),
            child: Text(
              "Most Liked Recipes",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
          // ignore: sized_box_for_whitespace
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Container(
              //color: Colors.red,
              width: double.infinity,
              height: 150.0,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                _cards1(
                  title: "Tofu Noodle Soup",
                  path: "assets/fotocomida2.jpeg",
                ),
                _cards1(
                  title: "Salad",
                  path: "assets/fotocomida3.jpeg",
                ),
                _cards1(
                  title: "Past",
                  path: "assets/fotocomida4.jpeg",
                ),
              ]),
            ),
          ),
          // ignore: sized_box_for_whitespace
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Container(
              width: double.infinity,
              height: 300.0,
              //color: Colors.yellow,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _food(
                      title: "Chicken Salad",
                      number: "6.2K",
                      path: "assets/fotocomida1.jpeg",
                    ),
                    _food(
                      title: "Meat Ball Pizza",
                      number: "3.4K",
                      path: "assets/fotocomida2.jpeg",
                    ),
                    _food(
                      title: "Meat Ball Pizza",
                      number: "5.4K",
                      path: "assets/fotocomida4.jpeg",
                    ),
                    _food(
                      title: "Meat Ball Pizza",
                      number: "2.4K",
                      path: "assets/fotocomida3.jpeg",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('')),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('')),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark), title: Text('')),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('')),
        ],
      ),
    );
  }
}

Widget _cards1({
  required String title,
  required String path,
}) {
  return Container(
    width: 180.0,
    height: 150.0,
    margin: EdgeInsets.only(left: 15.0),

    // height: double.infinity,
    decoration: BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.circular(10.0),
      image: DecorationImage(
        image: AssetImage(path),
        fit: BoxFit.fitWidth,
      ),
    ),

    child: Padding(
      padding: const EdgeInsets.only(
        top: 105.0,
      ),
      child: Column(children: [
        Container(
          width: 180.0,
          height: 45.0,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Align(
            alignment: Alignment.centerRight,
            child: ListTile(
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(color: Colors.black),
                  ),
                  Container(
                    width: 200.0,
                    height: 17.0,
                    decoration: BoxDecoration(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.black,
                          size: 17,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.black,
                          size: 17,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.black,
                          size: 17,
                        ),
                        Icon(
                          Icons.star_outline,
                          size: 17,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    ),
  );
}

Widget _food({
  required String title,
  required String number,
  required String path,
}) {
  return Padding(
    padding: EdgeInsets.only(bottom: 10.0),
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
            "Special Diets",
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
                color: Colors.black,
              ),
              Icon(
                Icons.star,
                size: 17,
                color: Colors.black,
              ),
              Icon(
                Icons.star,
                size: 17,
                color: Colors.black,
              ),
              Icon(
                Icons.star,
                size: 17,
                color: Colors.black,
              ),
              Icon(
                Icons.star_outline,
                size: 17,
                color: Colors.black,
              ),
            ],
          ),
        ],
      ),
      leading: Container(
        width: 60.0,
        height: 80.0,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(5.0),
          image: DecorationImage(
            image: AssetImage(path),
            fit: BoxFit.cover,
          ),
        ),
      ),
      trailing: Column(
        children: [
          Text(
            number,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.black45,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Cooked",
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.black45,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    ),
  );
}
