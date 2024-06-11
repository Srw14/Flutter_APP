import 'package:flutter/material.dart';
import 'package:flutter_project_application_1/main/mainproduct.dart';

class ItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 8; i++)
          // Repeatable product card
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Color(0xFFF111828), // เปลี่ยนสีขอบที่นี่
                width: 2.0, // กำหนดความหนาของขอบ
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color(0xFFC7F458),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Icon(Icons.favorite_border, color: Colors.red),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return productpage();
                      }),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.all(7),
                    child: Image.asset(
                      "assets/images/pro.png",
                      width: 60,
                      height: 100,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 5),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Product Title",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFFF111828),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Write description of product",
                    style: TextStyle(fontSize: 10, color: Color(0xFF000000)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 7.3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$55",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000),
                        ),
                      ),
                      Icon(
                        Icons.shopping_cart_checkout,
                        color: Color(0xFF000000),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
