import 'package:flutter/material.dart';

class DoctorsAppointment extends StatelessWidget {
  const DoctorsAppointment({Key? key}) : super(key: key);

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
                      "Book An Appointment",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
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
