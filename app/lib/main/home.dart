import 'package:flutter/material.dart';
import 'package:flutter_project_application_1/components/homesearchbar.dart';
import 'package:flutter_project_application_1/components/categories.dart';
import 'package:flutter_project_application_1/components/product.dart';
// import 'package:flutter_project_application_1/components/navbar.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF111828),
      appBar: AppBar(
        backgroundColor: Color(0xFFF111828),
        iconTheme: IconThemeData(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        leading: GestureDetector(
          onTap: () {},
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 2),
              child: const Text(
                'Menu',
                style: TextStyle(
                  color: Color(0xFFF111828),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                'Explore your\nfavourite products',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                children: [
                  Expanded(
                    child: homesearchbar(),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
              child: Text(
                "Categories",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            CategoriesWidget(),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 18),
                    child: Text(
                      "Products",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF111828),
                      ),
                    ),
                  ),
                  ItemWidget(),
                  // cnvabar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
