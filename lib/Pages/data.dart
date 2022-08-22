

import 'package:flutter/material.dart';

String Image1 = "https://static.bangkokpost.com/media/content/20200903/c1_3738615.jpg";
String Username1 = "Azozz ALFiras";
String ImageProfile1 = "https://www.aljazeera.net/wp-content/uploads/2018/02/7b3e1c85-765d-4f7d-9d83-b15e86d56332.jpeg?resize=686%2C513";
String Like1 = "647164";
String Location1 = "Iraq";


String Image2 = "https://cdni.rt.com/media/pics/2022.03/original/62286ac042360413be1c44e0.jpg";
String Username2 = "Azozz ALFiras";
String ImageProfile2 = "https://parade.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTkwNTc5MDEzMjE3ODg4MTI0/steve-jobs-ftr.jpg";
String Like2 = "647164";
String Location2 = "Iraq";


String ImageRow = "asset/images/IMG_5A3F19EA9902-1.jpeg";

String ImageRow1 = "asset/images/IMG_8285CD6EC176-1.jpeg";
String ImageRow2 = "asset/images/IMG_D80AC3B5281E-1.jpeg";

// For Footer
Widget Footer() {
  return Container(
    width: double.infinity,
    height: 90,
    decoration: BoxDecoration(color: Color(0xffc2c1c1)),
    child: Padding(
      padding:
      const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          Column(
            children: [
              IconButton(
                icon: Icon(Icons.account_circle),
                iconSize: 30.0,
                color: Color(0xff484848),
                onPressed: () {
                },
              ),
              Text("الحساب",style: TextStyle(
                color: Color(0xff484848),
                fontFamily: "Cario",
                fontWeight: FontWeight.bold,
              ),),
            ],
          ),
          Column(
            children: [
              IconButton(
                icon: Icon(Icons.all_inbox),
                iconSize: 30.0,
                color: Color(0xff484848),
                onPressed: () {
                },
              ),
              Text("الطلبات",style: TextStyle(
                color: Color(0xff484848),
                fontFamily: "Cario",
                fontWeight: FontWeight.bold,
              ),),
            ],
          ),
          Column(
            children: [
              IconButton(
                icon: Icon(Icons.account_balance_wallet),
                iconSize: 30.0,
                color: Color(0xff484848),
                onPressed: () {
                },
              ),
              Text("المحفظة",style: TextStyle(
                color: Color(0xff484848),
                fontFamily: "Cario",
                fontWeight: FontWeight.bold,
              ),),
            ],
          ),

          Column(
            children: [
              IconButton(
                icon: Icon(Icons.home),
                iconSize: 30.0,
                color: Colors.red,
                onPressed: () {
                },
              ),
              Text("الرئيسية",style: TextStyle(
                color: Colors.red,
                fontFamily: "Cario",
                fontWeight: FontWeight.bold,
              ),),
            ],
          ),
        ],
      ),
    ),
  );
}

// ListPage View
Container ListItemFist(String ImageItem, String NameItem){
  return Container(
    height: 130,
    width: 100,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      children: [
        Image.asset(ImageItem,
          width: 90,
          height: 90,
        ),
        Text(NameItem,
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.bold,
            fontFamily: "Cario",
          ),
        ),
      ],
    ),
  );
}



