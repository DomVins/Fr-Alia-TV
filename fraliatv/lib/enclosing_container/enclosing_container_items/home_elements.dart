import 'package:flutter/material.dart';
import 'package:fraliatv/app_colors.dart';

import '../other_pages/appointment.dart';

class HomeElements extends StatefulWidget {
  const HomeElements({Key? key}) : super(key: key);

  @override
  State<HomeElements> createState() => _HomeElementsState();
}

class _HomeElementsState extends State<HomeElements> {
  List<Staff> staffs = [
    Staff('Dr. Vincent Dominic', 'images/doctors/1.png'),
    Staff('Dr. Mary J', 'images/doctors/2.jpeg'),
    Staff('Dr. Jesse A', 'images/doctors/3.jpeg'),
    Staff('Dr. Joan S', 'images/doctors/4.jpeg'),
    Staff('Dr. Mike P', 'images/doctors/1.png'),
    Staff('Dr. Martha N', 'images/doctors/2.jpeg'),
    Staff('Dr. Anabel Q', 'images/doctors/5.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: [
        Container(
            padding: const EdgeInsets.only(top: 5, left: 30, bottom: 15),
            child: const Text(
              'Top News',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.1),
            )),
        Center(
          child: Container(
              margin: const EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width * 0.90,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 230, 230, 230),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black38,
                      blurRadius: 1,
                      offset: Offset(0, 0))
                ],
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(25)),
              )),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
            margin: const EdgeInsets.only(top: 25),
            padding: const EdgeInsets.only(top: 20, left: 30, bottom: 15),
            child: const Text(
              'Recent Events',
             style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.1),
            )),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  facilities("images/facilities/1.png"),
                  facilities("images/facilities/2.jpeg")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  facilities("images/facilities/7.jpeg"),
                  facilities("images/facilities/3.jpeg")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  facilities("images/facilities/5.jpeg"),
                  facilities("images/facilities/6.png")
                ],
              )
            ],
          ),
        ),
        Container(
            margin: const EdgeInsets.only(top: 25),
            padding: const EdgeInsets.only(top: 20, left: 30, bottom: 15),
            child: const Text(
              'Our Staffs',
              style: TextStyle(
                  color: Colors.brown,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.1),
            )),
        Center(child: _buildStaffsWidget(staffs)),
        Container(
            margin: const EdgeInsets.only(top: 25),
            padding: const EdgeInsets.only(top: 20, left: 30, bottom: 15),
            child: const Text(
              'About Platform',
              style: TextStyle(
                  color: Colors.brown,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.1),
            )),
        Center(
          child: Container(
            margin: const EdgeInsets.only(bottom: 20),
            width: MediaQuery.of(context).size.width * 0.85,
            child: const Text("Fr. Alia TV is a . . .",
                style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 11, 36, 11),
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.5)),
          ),
        ),
        const SizedBox(
          height: 25,
        )
      ],
    );
  }

  Widget facilities(String image) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width * 0.4,
      height: MediaQuery.of(context).size.height * 0.35,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 230, 230, 230),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
              color: Colors.black38, blurRadius: 0.5, offset: Offset(0, 0))
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
       /*  child: Image.asset(
          image,
          fit: BoxFit.cover,
        ), */
      ),
    );
  }

  _buildStaffsWidget(List<Staff> staffs) => Container(
        margin: const EdgeInsets.only(top: 15),
        child: SizedBox(
          height: 200,
          child: ListView(
              padding: const EdgeInsets.only(left: 40),
              scrollDirection: Axis.horizontal,
              children: getStaffsList(staffs)),
        ),
      );
  List<Widget> getStaffsList(List<Staff> staffs) {
    List<Widget> courseCards = [];
    for (int i = 0; i < staffs.length; i++) {
      courseCards.add(getStaffCard(staffs[i].name, staffs[i].imageUrl));
    }
    return courseCards;
  }

  Widget getStaffCard(String name, String imageUrl) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(right: 20, bottom: 15),
        width: 140,
        height: 200,
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 230, 230, 230),
            blurRadius: 1.5,
          ),
        ], borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Stack(children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
            /*  child: Image(
                  image: AssetImage(
                    imageUrl,
                  ),
                  fit: BoxFit.cover) */
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                padding: const EdgeInsets.only(left: 8, right: 8),
                height: 45,
                width: 140,
                decoration: const BoxDecoration(
                    //color: Color(0xff0f17ad),
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(15))),
                child: Center(
                  child: Text(name,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.w700)),
                )),
          )
        ]),
      ),
    );
  }
}

class Staff {
  String name;
  String imageUrl;
  Staff(this.name, this.imageUrl);
}
