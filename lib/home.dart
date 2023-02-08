import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List image=[
    "assets/images/vpavic_171003_2029_0067.5.jpg",
    "assets/images/104891709-Bill_Gates_the_co-Founder.jpg",
    "assets/images/jeff-bezos-andrew-harrer_bloomberg-via-getty-images.jpg",
    "assets/images/mukesh-ambani.jpg",
    "assets/images/1128955260.jpg.0.jpg",
    "assets/images/adobeceo.jpg",
    "assets/images/Daniel-for-website.jpg",
    "assets/images/2015-597760harald-krueger1.jpg",
    "assets/images/michael-dell-dell-technologies-world.jpg",
    "assets/images/Bob_Swan_01.jpg",
  ];
  List name=["Sunder Pichai",
  "Bill Gates",
    "Jeff Bezcs",
    "Mukesh Ambani",
    "Tim Cook",
    "Shantanu Narayen",
    "Daniel Zhang",
    "Harald Kruger",
    "Michal Dell",
    "Bob Swan"
  ];
  List com=[
    "GOOGLE",
    "MICROSOFT",
    "AMAZONE",
    "RELIENCE LTD",
    "APPLE",
    "ADOBE",
    "ALIBABA",
    "BMW",
    "DELL",
    "INTEL"
  ];
  List tcolor=[
    Colors.white,
    Colors.black,
    Colors.white,
    Colors.black,
    Colors.white,
    Colors.black,
    Colors.white,
    Colors.black,
    Colors.white,
    Colors.black,
  ];
  List boxcolor=[
    Colors.black.withOpacity(0.50),
    Colors.white.withOpacity(0.50),
    Colors.black.withOpacity(0.50),
    Colors.white.withOpacity(0.50),
    Colors.black.withOpacity(0.50),
    Colors.white.withOpacity(0.50),
    Colors.black.withOpacity(0.50),
    Colors.white.withOpacity(0.50),
    Colors.black.withOpacity(0.50),
    Colors.white.withOpacity(0.50),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "CEO of MNC's",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue.shade200,
        ),
        backgroundColor: Colors.blue.shade500,
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xff30A2EB),
                Color(0xffD392EE)
              ],transform: GradientRotation(pi/2)
              )
          ),
          child: ListView.builder(
            itemCount: image.length,
            padding: EdgeInsets.all(5),
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
              child: Box(image[index],name[index],com[index],tcolor[index],boxcolor[index]),
            ),
          ),
        ),
      ),
    );
  }

  Widget Box(String image,String name,String com,Color tcolor,Color boxcolor) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: boxcolor,
      ),
      alignment: Alignment.center,
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 35,
            backgroundImage:
                AssetImage(image,),
          ),
          SizedBox(
            width: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,style: TextStyle(color: tcolor),),
              Text(com,style: TextStyle(fontSize: 11,color: tcolor),),
            ],
          ),
          Expanded(
              child: SizedBox(
            width: 10,
          )),
          Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: tcolor)
              ),
              alignment: Alignment.center,
              child: Icon(Icons.navigate_next,size: 20,color: tcolor),),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}