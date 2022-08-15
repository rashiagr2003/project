import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_7/third.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color(0xffFFFFFF),
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10),
              child: Text("Choose your",
                  style: GoogleFonts.lato(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffB4B4B4))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text("Design Course",
                  style: GoogleFonts.sofia(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      color: Colors.black)),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: MediaQuery.of(context).size.width * 0.80,
              height: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blueGrey.shade100),
              // ignore: prefer_const_constructors
              child: Center(
                child: const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search for course",
                      suffixIcon: Icon(Icons.search),
                      contentPadding: EdgeInsets.only(left: 8, top: 8)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text("Category",
                  style: GoogleFonts.sofia(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      color: Colors.black)),
            ),
            Container(
                margin: EdgeInsets.only(bottom: 20),
                width: MediaQuery.of(context).size.width,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.lightBlue.shade200),
                        ),
                        child: Text("UI/UX")),
                    Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.lightBlue.shade200),
                        ),
                        child: Text("Coding")),
                    Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.lightBlue.shade200),
                        ),
                        child: Text("Basic UI")),
                  ],
                )),
            Container(
              // width: 350,
              height: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(10),
                children: [
                  course("User Interface Design",
                      "https://freedesignfile.com/upload/2018/11/Office-people-computer-office-vector-illustration.jpg"),
                  course("User Interface Design",
                      "https://freedesignfile.com/upload/2018/11/Office-people-computer-office-vector-illustration.jpg"),
                  course("User Interface Design",
                      "https://freedesignfile.com/upload/2018/11/Office-people-computer-office-vector-illustration.jpg"),
                  course("User Interface Design",
                      "https://freedesignfile.com/upload/2018/11/Office-people-computer-office-vector-illustration.jpg"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text("Popular Course",
                  style: GoogleFonts.sofia(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      color: Colors.black)),
            ),
            Container(
              // width: 200,
              height: 300,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // scrollDirection: Axis.horizontal,
                  // padding: EdgeInsets.all(10),
                  children: [
                    offer("App design course",
                        "https://freedesignfile.com/upload/2018/11/Office-people-computer-office-vector-illustration.jpg"),
                    offer("App design course",
                        "https://freedesignfile.com/upload/2018/11/Office-people-computer-office-vector-illustration.jpg"),
                  ]),
            )
          ],
        ),
      ),
    ));
  }

  Widget offer(String course, String image) {
    return Container(
        padding: EdgeInsets.all(5),
        height: 250,
        // color: ,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(20),
          color: Color(0xffF9FAFC),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 140,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(course,
                  overflow: TextOverflow.clip,
                  style: GoogleFonts.sofia(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Colors.black)),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              width: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("24 lesson",
                      style: GoogleFonts.lato(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey)),
                  Row(
                    children: [
                      Text("4.3",
                          style: GoogleFonts.lato(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Colors.grey)),
                      Icon(
                        Icons.star,
                        size: 15,
                        color: Colors.lightBlue,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 210, 212, 216),
                  image: DecorationImage(image: NetworkImage(image))),
            ),
          ],
        ));
  }

  Widget course(String design, String image) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.all(10),
      height: 200,
      // color: ,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(20),
          color: Color(0xffF9FAFC)),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10),
            height: 120,
            width: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 210, 212, 216),
                image: DecorationImage(image: NetworkImage(image))),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 140,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(design,
                    overflow: TextOverflow.clip,
                    style: GoogleFonts.sofia(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        color: Colors.black)),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                width: 120,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("24 lesson",
                        style: GoogleFonts.lato(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey)),
                    Row(
                      children: [
                        Text("4.3",
                            style: GoogleFonts.lato(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.grey)),
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.lightBlue,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                width: 120,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$25",
                        style: GoogleFonts.lato(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Colors.lightBlue)),
                    Container(
                        margin: const EdgeInsets.only(top: 15),
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
