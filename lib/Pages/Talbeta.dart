import 'package:flutter/material.dart';

import 'data.dart';


class Talbeta extends StatefulWidget {
  const Talbeta({Key? key}) : super(key: key);

  @override
  State<Talbeta> createState() => _TalbetaState();
}

class _TalbetaState extends State<Talbeta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Footer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("حي القاهرة",
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold,
            fontFamily: "Cario",
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.notifications,color: Colors.black,),
          ),
        ],
        leading: Icon(Icons.search,color: Colors.black,),


      ),
      backgroundColor: Colors.white,
      body: Column(
        //height: MediaQuery.of(context).size.height,
        children: [
          Container(
            height: 180,
            child:  ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      ListItemFist("asset/images/IMG_3945C0C627BF-1.jpeg","المطاعم"),
                      ListItemFist("asset/images/IMG_8CD26AC3B530-1.jpeg","حلويات ومعجنات"),
                      ListItemFist("asset/images/IMG_A5281AD4D5F9-1.jpeg","دايت فوود"),
                      ListItemFist("asset/images/IMG_1AB9EE0B604D-1.jpeg","البقالة"),
                      ListItemFist("asset/images/IMG_97981F80D112-1.jpeg","الفواكخ والخضروات"),
                      ListItemFist("asset/images/IMG_B76F24DFABA0-1.jpeg","اللحوم"),
                      ListItemFist("asset/images/IMG_D4D316CB5F75-1.jpeg","بحرية"),

                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 250),
            child: Column(
              children: [
                Text("المحلات القريبة",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Cario",
                  ),
                ),
                Container(
                  height: 2,
                  width: 100,
                  color: Colors.red,
                ),

              ],
            ),
          ),
          SizedBox(height: 10,),
          Row(
            children: [

              Container(
                height: 130,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(30),
                ),

                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    imagePost(ImageRow,"كوست بركر"),
                    imagePost(ImageRow1,"مندي افندي"),
                    imagePost(ImageRow2,"فوفو سنوك"),


                  ],
                ),
              ),
            ],
          ),

 Padding(padding: EdgeInsets.only(top: 10,right: 10),

   child:  Container(
     height: 40,
     width: MediaQuery.of(context).size.width,
     child: ListView(
       scrollDirection: Axis.horizontal,
       children: [
         SizedBox(width: 10,),
         ItemSeaction("الكل"),
         SizedBox(width: 10,),
         ItemSeaction(" خصومات"),
         SizedBox(width: 10,),
         ItemSeaction("توصيل"),
         SizedBox(width: 10,),
         ItemSeaction("جديد"),

       ],
     ),
   ),

 ),
SizedBox(height: 20,),
          SizedBox(height: 10,),
          Column(
            children: [

              Container(
                height: 220,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(30),
                ),

                child: GridView.count(
                  crossAxisCount: 1,
                  //scrollDirection: Axis.horizontal,
                  children: [


                    imagePost1(ImageRow,"كوست بركر","بغداد المنصور","2,4334","جيد جدا"),
                    imagePost1(ImageRow1," Boo Food","بغداد المنصور","7,643"," ممتاز"),
                    imagePost1(ImageRow2,"  ملك البركر","بغداد الكرادة","10,4334"," سيئ"),



                  ],
                ),
              ),
            ],
          ),
],

    ),
    );
  }

  Stack imagePost(String url,String ItemName) {
    return Stack(
      children: [
        Padding(padding: EdgeInsets.only(right: 10),
          child:   Container(
            height: 130,
            width: MediaQuery.of(context).size.width - 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(0.6),
                image:
                DecorationImage(fit: BoxFit.cover, image: AssetImage(url))),
          ),
        ),
        Positioned(
          right: 20,
          bottom: 90,
          child: Row(
            children: [
              Container(
                height: 30,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white.withOpacity(0.8),
                ),
                child: Padding(padding: EdgeInsets.only(left: 10,top: 5),
                  child: Text(ItemName,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Cario",
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ],
    );
  }
  Container ItemSeaction(String Name){
    return Container(
      height: 10,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0xffe0dede),
      ),

      child: Center(
        child: Text(Name,
          style: TextStyle(
            color: Colors.red,
            fontSize: 15,
            // fontWeight: FontWeight.bold,
            fontFamily: "Cario",
          ),
        ),
      ),
    );
  }
  Stack imagePost1(String url,String ItemName,String Location,String Price,String StatusFood) {
    return Stack(
      children: [
        Padding(padding: EdgeInsets.only(right: 10),
          child:   Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(0.6),
                image:
                DecorationImage(fit: BoxFit.cover, image: AssetImage(url))),
          ),
        ),
        Positioned(
          right: 20,
          bottom: 350,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 30,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white.withOpacity(0.8),
                ),
                child: Padding(padding: EdgeInsets.only(left: 10,top: 5),
                  child: Text(ItemName,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Cario",
                    ),
                  ),
                ),
              ),

            ],

          ),
        ),
        Positioned(
          right: 20,
          bottom: 205,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(ItemName,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Cario",
                ),
              ),
            ],
          ),
        ),

        Positioned(
          left: 20,
          bottom: 210,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("سعر التوصيل  :  $Price",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Cario",
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 15,
          bottom: 180,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(Location,
                style: TextStyle(
                  color: Color(0xff7474747),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Cario",
                ),
              ),
              Icon(Icons.location_on,color: Color(0xff7474747),),
            ],
          ),
        ),
        Positioned(
          left: 25,
          bottom: 180,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(StatusFood,
                style: TextStyle(
                  color: Color(0xff7474747),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Cario",
                ),
              ),
              Icon(Icons.sentiment_satisfied,color: Color(0xff7474747),),
            ],
          ),
        ),
      ],
    );
  }





}
