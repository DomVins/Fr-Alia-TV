import 'package:flutter/material.dart';

class Prescription extends StatefulWidget {
  const Prescription({Key? key}) : super(key: key);

  @override
  State<Prescription> createState() => _PrescriptionState();
}

class _PrescriptionState extends State<Prescription> {
  List<String> common = [
    "Malaria",
    "Pregnancy Sickness",
    "Stomach Ache",
    "Body Pains",
    "Tiredness"
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
            padding: const EdgeInsets.only(top: 20, left: 30, bottom: 15),
            child: const Text(
              'Drug Prescriptions and Medical Advice',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.1),
            )),
        Container(
            padding: const EdgeInsets.only(top: 10, left: 30, bottom: 15),
            child: const Text(
              'Common Sicknesses',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.2),
            )),
        Container(
          padding: const EdgeInsets.only(left: 30),
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: common.length,
            itemBuilder: (context, index) {
              return ListTile(title: Text(common[index]));
            },
          ),
        ),
      ],
    );
  }
}
