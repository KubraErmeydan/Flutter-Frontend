import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalendarPage> {

  DateTime today=DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusedDay){
    setState(() {
      today= day;
    });
  }

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
            SizedBox(height: 30,),
            Text('Cleaner Calendar',style: TextStyle(color: Colors.white),),
            TableCalendar(
              calendarStyle: CalendarStyle(defaultTextStyle: TextStyle(color: Colors.white),weekendTextStyle: TextStyle(color: Colors.white),),
              headerStyle: HeaderStyle(formatButtonVisible: false,titleCentered: true,titleTextStyle: TextStyle(color: Colors.white)),
                focusedDay: today,
                firstDay: DateTime.utc(2015,12,15),
                lastDay: DateTime.utc(2030,3,14),
              rowHeight: 50,
              availableGestures: AvailableGestures.all,
              selectedDayPredicate: (day)=>isSameDay(day,today),
              onDaySelected: _onDaySelected ,
              calendarFormat: CalendarFormat.week,
                daysOfWeekStyle: DaysOfWeekStyle(weekdayStyle:TextStyle(color: Colors.white),weekendStyle: TextStyle(color: Colors.white))
            ),

            Expanded(
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    color: Color(0xffF2F2F2),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(20) )
                ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(DateFormat('yyyy-MM-dd').format(DateTime.now())),
                ),
                Container(
                  child: Row(
                    children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text('10 AM'),
                  ),
                  SizedBox(width: 40,),
                  Container(
                    width:270,
                    height:150,
                    color: Color(0xffDFDEFF),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                              Text('Micheal Hamilton',style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold),),
                              Text('Upkeep Cleaning',style: TextStyle(color: Colors.grey.shade600,fontSize: 12),),
                              Row(children: [Icon(Icons.watch_later_rounded,color: Colors.deepPurple,size: 14,),Text('10AM-11AM',style: TextStyle(color: Colors.deepPurple,fontSize: 10),)],),
                              Row(
                                children: [
                                  Text('Client Rating',style: TextStyle(color: Colors.grey.shade600,fontSize: 12),),
                                  Icon(Icons.star,color: Colors.black,size: 16,),
                                  Icon(Icons.star,color: Colors.black,size: 16,),
                                  Icon(Icons.star,color: Colors.black,size: 16,)
                                ],),
                          ],),
                            SizedBox(width: 50,),
                            CircleAvatar(backgroundColor:Color(0xffA79CE3) ,radius:25,child: Image.asset('assets/mrprofile.png'),)
                          ],),

                          Row(
                            children: [
                              Icon(Icons.phone_outlined,size: 20,),
                              SizedBox(width: 15,),
                              Icon(Icons.mail_outline_sharp,size: 20,),
                              SizedBox(width: 150,),
                              Text("\$50",style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold),)
                            ],
                          )
                        ],
                      ),
                    )
                    ,)
                ],),),
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('12 PM'),
                      ),
                      SizedBox(width: 40,),
                      Container(
                        width:270,
                        height:150,
                        color: Color(0xffDFDEFF),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text('Alexandra johnson',style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold),),
                                      Text('Upkeep Cleaning',style: TextStyle(color: Colors.grey.shade600,fontSize: 12),),
                                      Row(children: [Icon(Icons.watch_later_rounded,color: Colors.deepPurple,size: 14,),Text('12PM-1PM',style: TextStyle(color: Colors.deepPurple,fontSize: 10),)],),
                                      Row(
                                        children: [
                                          Text('Client Rating',style: TextStyle(color: Colors.grey.shade600,fontSize: 12),),
                                          Icon(Icons.star,color: Colors.black,size: 16,),
                                          Icon(Icons.star,color: Colors.black,size: 16,),
                                          Icon(Icons.star,color: Colors.black,size: 16,)
                                        ],),
                                    ],),
                                  SizedBox(width: 50,),
                                  CircleAvatar(backgroundColor:Color(0xffA79CE3) ,radius:25,child: Image.asset('assets/mrsprofile.png'),)
                                ],),

                              Row(
                                children: [
                                  Icon(Icons.phone_outlined,size: 20,),
                                  SizedBox(width: 15,),
                                  Icon(Icons.mail_outline_sharp,size: 20,),
                                  SizedBox(width: 150,),
                                  Text("\$50",style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold),)
                                ],
                              )
                            ],
                          ),
                        )
                        ,)
                    ],),),
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('3 PM'),
                      ),
                      SizedBox(width: 40,),
                      Container(
                        width:270,
                        height:150,
                        color: Color(0xffDFDEFF),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text('Micheal Hamilton',style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold),),
                                      Text('Inital Cleaning',style: TextStyle(color: Colors.grey.shade600,fontSize: 12),),
                                      Row(children: [Icon(Icons.watch_later_rounded,color: Colors.deepPurple,size: 14,),Text('3PM-6PM',style: TextStyle(color: Colors.deepPurple,fontSize: 10),)],),
                                      Row(
                                        children: [
                                          Text('Client Rating',style: TextStyle(color: Colors.grey.shade600,fontSize: 12),),
                                          Icon(Icons.star,color: Colors.black,size: 16,),
                                          Icon(Icons.star,color: Colors.black,size: 16,),
                                          Icon(Icons.star,color: Colors.black,size: 16,)
                                        ],),
                                    ],),
                                  SizedBox(width: 50,),
                                  CircleAvatar(backgroundColor:Color(0xffA79CE3) ,radius:25,child: Image.asset('assets/mrprofile.png'),)
                                ],),

                              Row(
                                children: [
                                  Icon(Icons.phone_outlined,size: 20,),
                                  SizedBox(width: 15,),
                                  Icon(Icons.mail_outline_sharp,size: 20,),
                                  SizedBox(width: 150,),
                                  Text("\$150",style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold),)
                                ],
                              )
                            ],
                          ),
                        )
                        ,)
                    ],),)
              ],),
              ),
            )
          ],
        ),
      ),
    );
  }
}
