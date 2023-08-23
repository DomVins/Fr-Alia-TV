import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 20),
                child: Row(
                  children: [
                    InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Icon(Icons.arrow_back_rounded)),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Dr. Vincent Dominic",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
