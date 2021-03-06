import '../../perfilmedica_page.dart';
import '/theme/apptheme.dart';
import 'package:flutter/material.dart';

class TabFeatured extends StatelessWidget {
  const TabFeatured({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        CardFood(),
        // ListFood(),
      ],
    ));
  }
}

class CardFood extends StatelessWidget {
  const CardFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
      width: double.infinity,
      height: 150.0,
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
            child: _cardTipo1(
              title: "Medicina \n general",
              title2: "Dra.\n Meredith \n grey",
              path: "assets/1.png",
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
            child: _cardTipo1(
              title: "Traumatología",
              title2: "Dra.\n Kepner",
              path: "assets/2.png",
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
            child: _cardTipo1(
              title: "Cardiología",
              title2: "Dr.\n Dereck \n Sheppar",
              path: "assets/3.png",
            ),
          ),
        ],
      ),
    );
  }

  Widget _cardTipo1({
    required String title,
    required String title2,
    required String path,
  }) {
    return Container(
      width: 240.0,
      margin: EdgeInsets.only(left: 15.0),
      padding: EdgeInsets.all(15.0),
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromRGBO(90, 207, 197, 1.0),
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage(path),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            title2,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Colors.amber,
      shadowColor: Colors.amber,
      child: Container(
        width: 240.0,
      ),
    );
  }
}

class ListFood extends StatelessWidget {
  const ListFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200.0,
      //color: Colors.yellow,
      child: Column(
        children: [
          _food(
            title: "Chicken Salad",
            number: "6.2K",
            path: "assets/food_1.jpeg",
          ),
          _food(
            title: "Meat Ball Pizza",
            number: "3.4K",
            path: "assets/food_2.jpeg",
          ),
        ],
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
                  color: AppTheme.kPrimary,
                ),
                Icon(
                  Icons.star,
                  size: 17,
                  color: AppTheme.kPrimary,
                ),
                Icon(
                  Icons.star,
                  size: 17,
                  color: AppTheme.kPrimary,
                ),
                Icon(
                  Icons.star,
                  size: 17,
                  color: AppTheme.kPrimary,
                ),
                Icon(
                  Icons.star_outline,
                  size: 17,
                  color: AppTheme.kPrimary,
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
}
