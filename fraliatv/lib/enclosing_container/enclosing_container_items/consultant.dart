import 'package:flutter/material.dart';

import '../other_pages/chat.dart';

class Consultant extends StatefulWidget {
  const Consultant({Key? key}) : super(key: key);

  @override
  State<Consultant> createState() => _ConsultantState();
}

class _ConsultantState extends State<Consultant> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          Container(
              padding: const EdgeInsets.only(top: 20, left: 30, bottom: 15),
              child: Row(
                children: const [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Color.fromARGB(255, 230, 230, 230),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Chats',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.1),
                  ),
                ],
              )),
          Container(
              margin: EdgeInsets.all(15), child: Text("Available Doctors")),
          Container(
            height: 85,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(width: 15),
                doctorDp(),
                doctorDp(),
                doctorDp(),
                doctorDp(),
                doctorDp(),
                doctorDp(),
                doctorDp(),
              ],
            ),
          )
        ]);
  }

  Widget doctorDp() {
    return GestureDetector(
      onTap: (() => Navigator.push(
          context, MaterialPageRoute(builder: (context) => Chat()))),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: Color.fromARGB(255, 230, 230, 230),
            ),
            Text(
              "Dr. Vincent\nDominic",
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
