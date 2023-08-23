import 'package:flutter/material.dart';

class Records extends StatefulWidget {
  const Records({Key? key}) : super(key: key);

  @override
  State<Records> createState() => _RecordsState();
}

class _RecordsState extends State<Records> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Text(
              "To check your test results, enter the test ID given to you from the hospital in the search field below and click on check."),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          margin: const EdgeInsets.symmetric(horizontal: 50),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(50),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black54, blurRadius: 1, offset: Offset(0, 1.5))
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration.collapsed(
                      hintText: ("Enter Test ID"),
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 230, 228, 228))),
                ),
              ),
              Expanded(child: Container()),
              Icon(Icons.arrow_forward_rounded, size: 22, color: Colors.white)
            ],
          ),
        ),
      ],
    );
  }
}
