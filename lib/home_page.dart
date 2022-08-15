import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_7/second.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
          child: Column(children: [
        Container(
          // margin: EdgeInsets.symmetric(vertical: 20),
          height: MediaQuery.of(context).size.height * 0.40,
          width: MediaQuery.of(context).size.width,
          color: Color(0xff002041),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffFFFFFF)),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Search",
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            prefixIcon: Icon(Icons.search)),
                      ),
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.amber,
                      backgroundImage: NetworkImage(
                          "https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/social-media-profile-photos-3.jpg"),
                    )
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            // width: MediaQuery.of(context).size.width,
                            child: Text("My Wallet",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            // width: MediaQuery.of(context).size.width,
                            child: Text("06 july 2022",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff4A597D),
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 160,
                      ),
                      Container(
                        height: 60,
                        // width: MediaQuery.of(context).size.width,
                        child: Text(
                          "\$356",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    // physics: NeverScrollableScrollPhysics(),
                    // shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    scrollDirection: Axis.horizontal,
                    children: [
                      list(
                        75,
                        Color(0xffFF034A),
                        "incomes",
                        348.02,
                      ),
                      list(
                        65,
                        Color(0xff554AE8),
                        "expanses",
                        125.34,
                      ),
                      list(
                        75,
                        Color(0xffFF034A),
                        "incomes",
                        348.02,
                      ),
                      list(
                        65,
                        Color(0xff554AE8),
                        "expanses",
                        125.34,
                      ),
                    ],
                  ),
                ),
              ]),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: Card(
            child: Column(children: [
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    child: Text(
                      "TRANSACTIONS",
                      style: GoogleFonts.poppins(
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff484A58)),
                    ),
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  Text(
                    "Show all",
                    style: GoogleFonts.poppins(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffC3657F)),
                  ),
                ],
              ),
              profile(
                  "Devid Singh",
                  "https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/social-media-profile-photos-3.jpg",
                  "Recieved",
                  248.54),
              profile(
                  "AirLine Ticket",
                  "https://c8.alamy.com/comp/2AN218D/vector-boarding-pass-modern-airline-ticket-for-a-flight-2AN218D.jpg",
                  "Visa****3451",
                  -172.05),
              profile(
                  "Cannon Davidson",
                  "https://www.davidson.edu/sites/default/files/styles/small_4x3/public/2019-04/Cannon-Residence-Hall.jpg?h=d668167d&itok=_WRDvnjg",
                  "Visa****3451",
                  -100.00),
              profile(
                  "Internet",
                  "https://cdn2.vectorstock.com/i/1000x1000/65/86/internet-creative-ideas-profile-vector-1526586.jpg",
                  "Visa****3451",
                  -172.05),
              profile(
                  "Gas and light",
                  "https://5.imimg.com/data5/KR/YH/BL/SELLER-37351046/lpg-gas-laltren-500x500.jpg",
                  "Visa****3451",
                  -172.05),
            ]),
          ),
        ),
      ])),
    ));
  }

  Widget list(int rate, Color bgColor, String name, double money) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SecondPage()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        padding: EdgeInsets.symmetric(horizontal: 5),
        height: 80,
        // width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 35,
              backgroundColor: bgColor,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Color(0xffFFFEFF),
                child: Text(
                  rate.toString(),
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(199, 170, 170, 170)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffBBBEC5))),
                    Text("\$" + money.toString(),
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            color: Colors.black))
                  ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget profile(String name, String image, String lastseen, double money) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
          leading: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.amber,
              image: DecorationImage(
                  image: NetworkImage(image), fit: BoxFit.cover),
            ),
          ),
          title: Text(
            name,
            style: GoogleFonts.lato(
                fontSize: 20,
                fontWeight: FontWeight.w900,
                color: Color(0xff101017)),
          ),
          subtitle: Text(
            lastseen,
            style: GoogleFonts.lato(
                fontSize: 19,
                fontWeight: FontWeight.w700,
                color: Color(0xffB8BCBE)),
          ),
          trailing: Text(
            "\$" + money.toString(),
            style: GoogleFonts.lato(
                fontWeight: FontWeight.w700,
                fontSize: 21,
                color: money > 0 ? Color(0xff8FD9C7) : Colors.red),
          )),
    );
  }
}
