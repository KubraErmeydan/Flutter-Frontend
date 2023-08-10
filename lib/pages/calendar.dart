import 'package:flutter/material.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xff5C4DB1),
            borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(25) )
        ),
        child: Column(
          children: [
            SizedBox(height: 70,),
            Padding(
              padding: const EdgeInsets.all(25.0),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    color: Color(0xffF2F2F2),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(20) )
                ),

              ),
            )
          ],
        ),
      ),
    );
  }
}
