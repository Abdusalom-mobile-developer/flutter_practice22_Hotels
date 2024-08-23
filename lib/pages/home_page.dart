import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget hotelsCardMaker(String image, String title) {
    return Container(
      margin: EdgeInsets.only(right: 17),
      height: 210,
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      child: Container(
        padding: EdgeInsets.only(left: 25, bottom: 17, right: 25),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient: LinearGradient(
                colors: [Colors.black87, Colors.black45, Colors.black45],
                begin: Alignment.bottomLeft)),
        child: Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 32,
                ),
              ],
            )),
      ),
    );
  }

  TextEditingController _inputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 280,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/hotel_banner.jpg"),
                    fit: BoxFit.cover)),
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.black54,
                Colors.black54,
              ], begin: Alignment.bottomLeft)),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text(
                  "What kind of hotel do you want?",
                  style: TextStyle(
                      fontSize: 29,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 40,
                    right: 40,
                  ),
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(45)),
                  child: TextField(
                    controller: _inputController,
                    textAlign: TextAlign.start,
                    textAlignVertical:
                        TextAlignVertical(y: BorderSide.strokeAlignOutside),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: "Search",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        )),
                  ),
                ),
                SizedBox(
                  height: 30,
                )
              ]),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Column(
                      children: [
                        Text("Luxary Hotels",
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 210,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        hotelsCardMaker("assets/images/hotel2.jpg", "Luna"),
                        hotelsCardMaker("assets/images/hotel1.jpg", "Eden"),
                        hotelsCardMaker("assets/images/hotel3.jpg", "Aqua"),
                        hotelsCardMaker("assets/images/hotel4.jpg", "Mira"),
                        hotelsCardMaker("assets/images/hotel5.jpg", "Zen"),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 25),
                    child: Column(
                      children: [
                        Text("Royal Hotels",
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 210,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        hotelsCardMaker("assets/images/hotel5.jpg", "Mira"),
                        hotelsCardMaker("assets/images/hotel4.jpg", "Zen"),
                        hotelsCardMaker("assets/images/hotel3.jpg", "Luna"),
                        hotelsCardMaker("assets/images/hotel1.jpg", "Aqua"),
                        hotelsCardMaker("assets/images/hotel2.jpg", "Eden"),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 25),
                    child: Column(
                      children: [
                        Text("Boutique Hotels",
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 210,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        hotelsCardMaker("assets/images/hotel4.jpg", "Eden"),
                        hotelsCardMaker("assets/images/hotel5.jpg", "Zen"),
                        hotelsCardMaker("assets/images/hotel3.jpg", "Luna"),
                        hotelsCardMaker("assets/images/hotel1.jpg", "Mira"),
                        hotelsCardMaker("assets/images/hotel2.jpg", "Aqua"),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
